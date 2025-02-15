Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  root to: "clothes#index"

  resources :clothes do
    resources :purchases, only: [:index, :create]
    resources :comments, only: [:create]
  end

  resources :searches, only: [:index] do
    collection do
      get 'search'
    end
  end
  
end
