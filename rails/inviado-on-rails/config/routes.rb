Rails.application.routes.draw do
  resources :organizations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :memberships
  resources :members
  resources :articles

  get 'index/new'
  get 'index/create'
  get 'welcome/index'

  # administration
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
