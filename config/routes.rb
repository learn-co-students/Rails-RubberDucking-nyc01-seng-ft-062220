Rails.application.routes.draw do
  # resources :ducks, only: [:index]
  # resources :students, only: [:index, :show, :new, :create, :edit]
  resources :ducks, :students
end
