Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :attendances
  resources :events do
    resources :coaches do
      get 'all'
    end
    member do #Member means a member of the table 
      post 'update_attendance'
    end
  end
  # post 'users/sign_in', to: 'users#sign_in'
  resources :users
end