Kando::Application.routes.draw do
  resources :pit_types

  resources :sampling_parameters

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

  scope "(:locale)", locale: /en|he/ do
    resources :factories
  end

  root :to => "digoms#index"
  match '/index.html', :to => "digoms#index", via: 'get'

  get '/:locale' => 'application#home'

  #get 'home', :to => 'application#home'
  

 
end
  