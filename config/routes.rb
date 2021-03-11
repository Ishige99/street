Rails.application.routes.draw do
  devise_for :users
  root to: "clothes#index"

  resources :clothes do
    resources :purchases, only: [:index, :create]
  end

  resources :searches, only: [:index] do
    collection do
      get 'search'
    end
  end
  
end
