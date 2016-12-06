Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'lifestyle', to:'pages#lifestyle'

  get 'videos', to:'pages#videos'

  get 'coding', to:'pages#coding'

  get 'about', to:'pages#about'

  get 'contact', to:'pages#contact'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
