Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "phones#index"
  get "phones/new", to: "phones#new", as: "new_phone"
  get "phones", to: "phones#index"
  get "phones/:id", to: "phones#show", as: "phone"
  post "phones", to: "phones#create"
  get "phones/:id/edit", to: "phones#edit"
  patch "phones/:id", to: "phones#update"
  delete "phones/:id", to: "phones#destroy"
end
