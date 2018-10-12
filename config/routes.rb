Rails.application.routes.draw do

  root 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resource :session, only: [:show, :create, :destroy]
    resources :users, only: [:show, :create]
    
    resources :listings, only: [:index, :show] do 
      resources :bookings, only: [:create]
    end
    
    resources :reviews, only: [:index, :create]
    resources :bookings, only: [:index, :show, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
