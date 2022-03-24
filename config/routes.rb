Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "profile", to: "pages#profile", as: :profile
  resources :stories, only: [:index, :show, :new, :create, :edit] do 
    resources :likes, only: [:create, :destroy]
    resources :reviews, only: [:new, :create]
    collection do 
      get "/category/:category", to: "stories#filter_index", as: :filter_index
      # get "/:category", to: "stories#filter_index", as: :filter_index
    end
  end
  resources :reviews, only: [:destroy]
end
