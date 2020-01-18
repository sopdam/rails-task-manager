Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"

  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: 'tasks#destroy', as: :destroy

  # need to put specific urls with ids as last, else page will get stuck at show method
  get "tasks/:id", to: "tasks#show", as: :task

end
