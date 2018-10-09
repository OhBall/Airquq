Rails.application.routes.draw do

  root 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resource :session, only: [:show, :create, :destroy]
    resources :users, only: [:show, :create]
    resources :listings, only: [:index, :show]
    resources :bookings, only: [:index, :show, :create, :update, :destroy]
    resources :reviews, only: [:index, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
