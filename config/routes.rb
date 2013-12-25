Kando::Application.routes.draw do
  resources :factories
  resources :corporates
  resources :digoms

  
  scope "(:locale)", locale: /en|he/ do
    resources :digoms
  end

  root :to => "digoms#index"
  match '/index.html', :to => "digoms#index", via: 'get'

  get '/:locale' => 'application#home'

  get 'home', :to => 'application#home'
  

 
end
