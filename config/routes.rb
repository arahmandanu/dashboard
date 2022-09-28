Rails.application.routes.draw do
  devise_for :users_dashboards
  root to: 'home#index'

  mount RailsAdmin::Engine => '/dashboards', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
