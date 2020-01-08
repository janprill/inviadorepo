Rails.application.routes.draw do
  resources :featurings
  resources :features
  resources :taggings
  resources :commentings
  resources :linkings
  resources :searchings
  resources :comments
  resources :tags
  resources :searchresults
  resources :links
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  get "/graphql", to: "graphql#execute"
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
