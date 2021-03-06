class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :check_admin_rights!, only: [:new, :edit, :create, :update, :destroy]

  expose_decorated(:categories)
  expose(:category)
  expose_decorated(:products, ancestor: :category)
  expose(:product) { Product.new }

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.category = Category.new(category_params)

    if category.save
      redirect_to category, notice: 'Category was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if category.update(category_params)
      redirect_to category, notice: 'Category was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

    def check_admin_rights!
      redirect_to new_user_session_path, error: 'You are not allowed to perform this action.' unless current_user.admin?
    end
end
