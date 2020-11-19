Rails.application.routes.draw do
  root to: 'items#show'
  resources :items, only: [:index, :show, :new, :create]
end
