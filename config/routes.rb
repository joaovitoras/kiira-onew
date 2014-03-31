KiiraOnew::Application.routes.draw do

  devise_for :users
  resources :galleries do 
  	resources :drawings
  end
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  root "galleries#index"

end
