Rails.application.routes.draw do

  devise_for :users

  resources :wikis do
    resources :collaborators, only: [:index, :create, :destroy]
  end

  resources :charges, only: [:new, :create]


  root 'wikis#index'
end
