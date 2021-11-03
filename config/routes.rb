Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/cms', as: 'rails_admin'
   #, :controllers => {:sessions => "users/sessions", :passwords => "users/passwords"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
