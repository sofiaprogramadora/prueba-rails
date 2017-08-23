Rails.application.routes.draw do

  root 'pages#batman_vs_superman'

  get 'pages/batman'

  get 'pages/superman'

  get 'pages/batman-vs-superman', to: 'pages#batman_vs_superman', as: 'batman-vs-superman'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end