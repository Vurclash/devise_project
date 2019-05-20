Rails.application.routes.draw do
  get 'hobbies/index'
  get 'hobbies/show'
  get 'hobbies/new'
  get 'hobbies/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
