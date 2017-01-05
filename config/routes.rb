Rails.application.routes.draw do
  resources :moods
  resources :users

  root to: 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
