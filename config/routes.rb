Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  
  resources :users, only: [:new, :create]
  
  post 'users/confirm' => 'users#confirm'

  get 'welcome/index'

  get 'about' => 'welcome#about'
  
  root 'welcome#index'
  

end
