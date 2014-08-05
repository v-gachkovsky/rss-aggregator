Rails.application.routes.draw do

  get 'welcom/index'
  root 'welcome#index'
  resources :groups

  devise_for :users, :controllers => { registrations: 'profiles' }
end
