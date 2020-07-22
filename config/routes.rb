Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :edit, :create, :update, :new]
  resources :students, only: [:index, :show, :edit, :create, :update, :new]
end
