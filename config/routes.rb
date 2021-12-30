Rails.application.routes.draw do
  get 'home/visit'
  get 'home/index'
  get 'home/dashboard'
  root 'home#index'


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :clients


  get '/client' => "home#dashboard", :as => :client_root

 
  get '/order', :to => 'orders#index'
  post :create_order, :to => 'orders#create_order'
  post :capture_order, :to => 'orders#capture_order'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
