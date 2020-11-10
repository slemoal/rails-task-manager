Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#all"

  get "tasks/new", to: "tasks#new", as: "new_tasks"
  post "tasks", to: "tasks#create"

  get "task/:id", to: "tasks#show", as: "task"
end
