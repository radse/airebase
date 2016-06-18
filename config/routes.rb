Rails.application.routes.draw do
  devise_for :users
  resources :aires
  root 'aires#index'

end
