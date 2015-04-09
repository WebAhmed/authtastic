Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: [:index, :create]
  get 'sign_up' => 'users#new'
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
end
