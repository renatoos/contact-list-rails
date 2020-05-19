Rails.application.routes.draw do
  resources :contacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "static_pages#index"

  get 'contact_form', to: "static_pages#contact_form"
  get 'about', to: "static_pages#about"
 
end
