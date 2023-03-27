Rails.application.routes.draw do
  # get "number" => "contact#number"
  # get "address" => "contact#address"
  # get 'play/call'

  root "employees#index"
  resources :employees
  post "create" => "employees#create"
  get "new" => "employees#new"


  get "maxx" => "maxx#new"
  post "maxx" => "maxx#create"
  get "display" => "maxx#show"
  get "detail" => "maxx#connect"
  
end