Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users #, :controllers => {:sessions => "users/sessions", :passwords => "users/passwords"}
  get 'home/index'
  get 'home/chat'

  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

end
