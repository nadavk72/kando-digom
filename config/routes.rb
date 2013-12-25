Kando::Application.routes.draw do
  resources :water_suppliers

  resources :sewage_farms

  resources :cities

  resources :sectors

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
