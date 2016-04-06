Rails.application.routes.draw do

  resources :posts, :questions

  get 'welcome/index'

  get 'about' => 'welcome#about'
  
  root 'welcome#index'
  

end
