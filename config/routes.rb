Rails.application.routes.draw do
  get '/user/:id', to: 'users#show', as: :user
  
  devise_for :users
  
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
