Rails.application.routes.draw do
  get '/signup', to: "users#new"
  root 'static_pages#home'
  get '/help' ,to: "static_pages#help"
  get '/privacy' ,to: "static_pages#privacy"
  get '/tos' ,to: "static_pages#tos"
  get '/about' ,to: "static_pages#about"
end
