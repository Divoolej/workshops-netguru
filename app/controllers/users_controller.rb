class UsersController < ApplicationController
  expose_decorated(:user)
  expose_decorated(:products, ancestor: :user)
  expose(:reviews, ancestor: :user)
  
  def show
  end
end
