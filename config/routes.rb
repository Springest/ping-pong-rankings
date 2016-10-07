Rankings::Application.routes.draw do
  get "/404", :to => "pages#not_found"
  get "/500", :to => "pages#error"

  root :to => 'pages#index'

  get '/auth/google_oauth2/callback', to: 'sessions#create'

  resource :sessions

  resources :players do
    get :ranking, on: :collection
    get :point_potential, on: :collection
    get :rating_history, on: :collection
  end

  resources :games do
    get :recalculate
  end
end
