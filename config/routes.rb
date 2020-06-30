Rails.application.routes.draw do
  root "lists#index"
  post "lists", controller: "lists", action: "create"

  resource :lists
end
