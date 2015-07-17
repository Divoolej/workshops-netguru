class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    "#{user.firstname} #{user.lastname}"
  end
  
  def url_to
    h.url_for [product.category, product, model]
  end
end
