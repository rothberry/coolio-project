Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      post '/signup', to: "users#signup"
      get '/me', to: "sessions#me"
      post '/login', to: "sessions#login"
      delete '/logout', to: "sessions#logout"

      get '/got', to: "google_books#got"
      get '/search_books', to: "google_books#search_books"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "/hello", to: "application#hello_world"

  # Might need that fallback route...
end
