Rails.application.routes.draw do

  root 'welcome#index'
  resources :groups
  resources :feeds

  devise_for :users, :controllers => { registrations: 'profiles' }
end
