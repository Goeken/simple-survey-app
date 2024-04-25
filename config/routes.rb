Rails.application.routes.draw do
  root 'surveys#index'

  resources :surveys, only: [:index, :new, :create, :show] do
    resources :responses, only: [:create]
  end
end
