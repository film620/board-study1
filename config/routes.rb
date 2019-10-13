Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get 'homes/index'
  get 'homes/create'
  get 'homes/edit'
  get 'homes/show/:id'=> "homes#show"
  get 'homes/delete/:id'=> "homes#delete"
  get 'homes/edit/:id'=> "homes#edit"
  get 'homes/update/:id'=> "homes#update"
  get 'homes/title_d'
  
end
