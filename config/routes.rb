Rails.application.routes.draw do
  resources :aires
  root 'aires#index'

end
