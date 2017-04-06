Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: [:new, :index, :create, :show, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
end