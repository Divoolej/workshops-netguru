class User < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_many :reviews
  has_many :products
end
