KiiraOnew::Application.routes.draw do
  resources :drawings

  resources :galleries

  resources :galleries do 
  	resources :drawings
  end
  resources :mains

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  root "galleries#index"

end
