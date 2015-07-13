class Review < ActiveRecord::Base
  validates :content, presence: true
  validates :product, presence: true
  validates :rating,  presence: true
  validates :user,    presence: true

  belongs_to :product
  belongs_to :user
end
