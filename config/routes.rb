Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :fakes, only: [:show, :new] do
    collection do
      get "/category/:category", to: "fakes#index", as: :index
    end
    resources :renting, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
