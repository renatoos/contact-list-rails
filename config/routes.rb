Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "static_pages#index"

  get 'contact_form', to: "static_pages#contact_form"
  get 'about', to: "static_pages#about"

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]

end
