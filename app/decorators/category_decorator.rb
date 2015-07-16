class CategoryDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  
  def carousel_string
    "#{name}"
  end
  
  def url_to
    h.url_for model
  end
  
  def first_top_product
    products.sort_by(&:average_rating).reverse.first
  end
  
  def second_top_product
    products.sort_by(&:average_rating).reverse.second
  end

  def third_top_product
    products.sort_by(&:average_rating).reverse.third
  end
  
  def highest_price
    unless products.first.nil?
      "$#{h.number_with_precision(products.order(price: :desc).first.price, precision: 2)}"
    else
      '-'
    end
  end
  
  def lowest_price
    unless products.first.nil?
      "$#{"%.2f" % products.order(price: :asc).first.price}"
    else
      '-'
    end
  end
end
