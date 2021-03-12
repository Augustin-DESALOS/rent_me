Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard", as: :dashboard
  resources :fakes, only: [:show, :new] do
    resources :rentings, only: [:create]
    collection do
      get "/category/:category", to: "fakes#index", as: :index
      # get "/profile/:profile", to: "fakes#profile", as: :profile
    end
  end
  delete "renting/:id", to: "rentings#destroy", as: :doudou
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
