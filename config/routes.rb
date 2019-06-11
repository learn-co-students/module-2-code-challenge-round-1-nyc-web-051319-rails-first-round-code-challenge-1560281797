Rails.application.routes.draw do
  get '/', to: 'static#index', as: 'main'
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]  
end
