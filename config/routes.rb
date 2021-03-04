Rails.application.routes.draw do
  devise_for :users
  root to: "clothes#index"
  resources :clothes, only: [:index, :new, :create]
end
