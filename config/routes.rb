Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'users/sessions'
  }
  root to: 'items#show'
  resources :items, only: [:index, :show, :new, :create] do
    resources :evaluations, only: :create
  end
end
