Rails.application.routes.draw do
  # get "number" => "contact#number"
  # get "address" => "contact#address"
  # get 'play/call'

  root "home#index"
  resources :employees
  get "index" => "employees#index"
  post "create" => "employees#create"
  get "new" => "employees#new"
  
end