Rails.application.routes.draw do
  root "todos#index"
 get "new", to: "todos#new"
  post 'todos/create', to: 'todos#create'

  get "up" => "rails/health#show", as: :rails_health_check

end
