Rails.application.routes.draw do
  resources :campers, only: [:index, :show]
  resources :campsites, only: [:index, :show]
  resources :supplies, only: [:index, :show]

  resources :campers, only: [:index, :show] do
    resources :supplies, only: [:index, :show]
  end

  resources :campsites, only: [:index, :show] do
    resources :campers, only: [:index, :show]
  end
end
