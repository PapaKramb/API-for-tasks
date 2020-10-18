Rails.application.routes.draw do

  # get 'todos/new', to: 'todos#new', as: 'todos'

  resources :projects do
    resources :todos, only: [:create, :update]
  end
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
