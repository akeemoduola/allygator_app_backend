Rails.application.routes.draw do
  resources :vehicles, only: [:create, :destroy] do
    resources :locations, only: [:create]
  end

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
