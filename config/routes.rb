Rails.application.routes.draw do
  get 'users/index'
    resources :sessions
    resources :users do
   resources :articles
  end    
  resources :articles do
   resources :comments
  end

  root 'welcome#index'
    
  post 'login', to: 'welcome#login', as: 'login'    
  
  
end
