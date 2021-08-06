Rails.application.routes.draw do
  devise_for :doctors
  devise_for :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
end