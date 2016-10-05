Rails.application.routes.draw do
  resources :whiteboards
  resources :follow_ups
  resources :patients
  resources :anaesthetics do
    resource :patients
  end
  resources :patients do
    resources :anaesthetics
    resources :follow_ups
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'patients#index'
end
