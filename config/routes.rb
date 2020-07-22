Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :new, :create, :update, :edit]
  resources :students, only: [:index, :show, :new, :create, :update, :edit]
  
  # resources :ducks, except: [:destroy]
  # resources :students, except: [:destroy]

  # get "/ducks", to: "/ducks#index", as: 'ducks'
  # get "/ducks/new", to: "/ducks#new", as: "new_duck"
  # get "/ducks/:id", to: "/ducks#show", as: "duck"
  # get "/ducks/:id/edit", to: "/ducks#edit", as: "edit_duck"
  
  # post "/ducks", to: "/ducks#create"
  # patch "/ducks/:id", to: "/ducks#update"
  # destroy "/ducks/:id", to: "/ducks#destroy"

  # get "/students", to: "/students#index", as: "students"
  # get "/students/new", to: "/students#new", as: "new_student"
  # get "/students/:id", to: "/students#show", as: "student"
  # get "/students/:id/edit", to: "/students#edit", as: "edit_student"
 
  # post "/students", to: "/students#create"
  # patch "/students/:id", to: "/students#update"
  # destroy "/students/:id", to: "/students#destroy"
end
