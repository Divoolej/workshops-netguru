class ProductDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def url_to
    h.url_for [model.category, model]
  end

  def carousel_string
    "#{title}"
  end
  
  def price_decorated
    unless price == 0
      "$#{h.number_with_precision(price, precision: 2)}"
    else
      "free!"
    end
  end
  
  def latest_review
    review = reviews.order(created_at: :desc).first
    unless review.nil?
      text = "<em>\"#{review.content}\"</em>"
      stars = ""
      review.rating.times do
        stars += '<span class="glyphicon glyphicon-star"></span>'
      end
      (5 - review.rating).times do
        stars += '<span class="glyphicon glyphicon-star-empty"></span>'
      end
      return h.raw "#{text} (#{stars})"
    else
      return h. raw '<em>No reviews yet.</em>'
    end
  end

end
