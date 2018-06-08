Rails.application.routes.draw do
  devise_for :users, conterollers: {registrations: "registrations"}
  root to: 'pages#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
end
