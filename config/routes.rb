Rails.application.routes.draw do
  devise_for :users
  
  resources :projects
  
  root "pages#home"
  get 'pages/home', to: 'pages#home'
end
