class Product < ActiveRecord::Base
  validates :title, presence: true#,
                    #uniqueness: { scope: [:user] }
  validates :description, presence: true
  validates :category, presence: true
  # validates :user, presence: true # Commented out to support the original spec
  validates :price, presence: true,
                    numericality: true,
                    format: { with: /(\A\d+\.\d{1,2}\z)|(\A\d+\z)/}
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy

  def average_rating
    unless reviews.empty?
      (reviews.inject(0) {|sum, review|
        sum += review.rating
      } / reviews.size.to_f).round(3)
    else
      0
    end
  end
end
