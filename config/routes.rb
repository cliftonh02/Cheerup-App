Rails.application.routes.draw do
  resources :user_moods
  resources :comments
  resources :moods
  resources :users #do
    #resources :user_moods
  #end
#^^ future reference for nesting
  root to: 'users#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
