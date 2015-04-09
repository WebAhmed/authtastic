Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: [:index, :create]
  get 'sign_up' => 'users#new'
  get 'log_in' => 'sessions#new'
  post 'log_in' => 'sessions#create'
  delete 'log_out' => 'sessions#destroy'
end
