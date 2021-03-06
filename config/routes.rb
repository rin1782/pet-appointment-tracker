Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/logout' => 'sessions#destroy'
  

  match '/auth/:google_oauth2/callback' => 'sessions#google', via: [:get, :post]
  
  resources :caretakers
  resources :pets do
    resources :events
  end
  resources :users 
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

end
