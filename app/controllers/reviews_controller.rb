class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  before_action :check_review_ownership!, only: [:destroy]
  expose(:review)
  expose(:category)
  expose_decorated(:product)
  expose_decorated(:reviews) { product.reviews }

  def create
    self.review = Review.new(review_params)
    self.review.product = product
    self.review.user = current_user
    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      flash.now[:modal] = true
      render 'products/show'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
    
    def check_review_ownership!
      unless current_user == review.user
        redirect_to category_product_path(category, product), error: "You are not allowed to perform this action."
      end
    end
end
