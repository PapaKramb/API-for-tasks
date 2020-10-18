Rails.application.routes.draw do

  get 'todos/new', to: 'todos#new', as: 'todos'

  resources :projects do
    resource :todos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
