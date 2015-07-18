class Review < ActiveRecord::Base
  validates :content, presence: true
  # validates :product, presence: true # Commented out to support 
                                       # the original spec
  validates :rating,  presence: true
  validates :user_id,    presence: true#,
                      #uniqueness: { scope: [:product] }

  belongs_to :product
  belongs_to :user
end
