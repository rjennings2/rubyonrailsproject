Rails.application.routes.draw do
  get "about/index"
  get "starships/index"
  get "starships/show"
  get "pages/about"
  get "planets/index"
  get "planets/show"
  get "planets/rails"
  get "planets/generate"
  get "planets/controller"
  get "planets/Starships"
  get "planets/index"
  get "planets/show"
  get "people/index"
  get "people/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  root 'pages#about'
  resources :people, only: [:index, :show]
  resources :planets, only: [:index, :show]
  resources :starships, only: [:index, :show]
  get 'about', to: 'pages#about'
end
