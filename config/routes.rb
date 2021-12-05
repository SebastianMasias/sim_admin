Rails.application.routes.draw do
  get 'home/index'
  get 'home/dashboard'


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :clients

  resources :home

  root 'home#index'

  get '/client' => "home#dashboard", :as => :client_root
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
