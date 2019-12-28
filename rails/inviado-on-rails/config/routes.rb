Rails.application.routes.draw do
  get 'index/new'
  get 'index/create'
  resources :articles
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
