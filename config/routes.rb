Rails.application.routes.draw do
  root "todos#index"
  get "new", to: "todos#new"
  post "todos/create", to: "todos#create"
  delete ":id/", to: "todos#destroy"
  get ":id/edit", to: "todos#edit"
  patch ":id/update", to: "todos#update"

  get "up" => "rails/health#show", as: :rails_health_check
end
