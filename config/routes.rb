Rails.application.routes.draw do

  get 'welcom/index'
  root 'welcome#index'

  devise_for :users, :controllers => { registrations: 'profiles' }
end
