Rails.application.routes.draw do
  resources :ducks, except: [:destroy] #, only: [:index]
  resources :students, except: [:destroy]#, only: [:index]
end
