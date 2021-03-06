Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "static_pages#root"

  namespace :api, defaults: { format: JSON } do
    resources :users, only: [:create]
    resources :spots, only: [:index, :create, :show] do
      resources :reviews, only: [:create]
    end
    resource :session, only: [:create, :destroy]
  end
end
