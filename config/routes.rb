Rails.application.routes.draw do
  devise_for :users
    resources :books do
        resources :reviews
    end
    
    root 'books#index'
    
     get '/show' => 'books#show'
    get '/new' => 'books#new'
    get '/index' => 'books#index'
    get '/new' => 'reviews#new'
end
