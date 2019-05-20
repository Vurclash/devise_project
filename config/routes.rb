Rails.application.routes.draw do
  devise_for :users
  root "hobbies#new"

  resources :hobbies
end
