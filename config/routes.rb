Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
   #, :controllers => {:sessions => "users/sessions", :passwords => "users/passwords"}
  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: 'home#index'
end
