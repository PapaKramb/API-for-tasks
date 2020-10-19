Rails.application.routes.draw do

  # resource :todos
  # resources :projects do
  #   resource :todos, only: [:create, :update]
  # end
  root to: 'projects#index'
  resources :projects, :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
