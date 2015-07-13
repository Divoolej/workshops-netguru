class Product < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :user, presence: true
  validates :price, presence: true, 
                    format: { with: /(\A\d+\.\d{1,2}\z)|(\A\d+\z)/}
  belongs_to :category
  belongs_to :user
  has_many :reviews

  def average_rating
    (reviews.inject(0) {|sum, review|
      sum += review.rating
    } / reviews.size.to_f).round(3)
  end
end
