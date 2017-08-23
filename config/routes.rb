Rails.application.routes.draw do

  get 'experiments/page1'

  get 'experiments/page2'

  get 'experiments/page3'

  root 'pages#batman_vs_superman'

  get 'pages/batman'

  get 'pages/superman'

  get 'pages/batman-vs-superman', to: 'pages#batman_vs_superman', as: 'batman-vs-superman'

  post 'pages/save_bat_vote'

  post 'pages/save_sup_vote'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end