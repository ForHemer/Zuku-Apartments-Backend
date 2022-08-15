Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  namespace :api do
    namespace :v1 do
      resources :apartment_images
      resources :reservations
      resources :apartments
    end
  end
end
