Rails.application.routes.draw do

  resources :appointments
  devise_for :doctors
  devise_for :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  # get 'patient/:pid/:did/new', to: 'appointments#appointment_new', as: 'appointment_new'
  get '/doctors_list', to: 'appointments#doctors_list', as: 'doctors_list'
end
