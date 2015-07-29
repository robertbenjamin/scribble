Rails.application.routes.draw do
  root to: 'posts#index'

  # posts routes
  resources :posts

  # # comments routes
  resources :comments

end
