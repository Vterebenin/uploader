Rails.application.routes.draw do
  root 'resumes#index'
  resources :resumes, only: [:index, :new, :create, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
