Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "gardens#index"
  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:new, :create]
  end
  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end
end
