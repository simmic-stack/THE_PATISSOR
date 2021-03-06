Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "dashboard", to: "pages#dashboard"
  resources :services, only: [:show, :create, :new, :index, :destroy, :update, :edit] do
    resources :rents, only: [:create, :new, :index]
  end
  resources :rents, only: :destroy
end
