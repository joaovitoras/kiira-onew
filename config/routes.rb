KiiraOnew::Application.routes.draw do

  get "static_page/who"
  get "static_page/what"
  get "static_page/why"
  devise_for :users
  resources :galleries do 
  	resources :drawings
  end

  get '/about/quem',           to: 'static_page#who',  as: :who
  get '/about/oque',           to: 'static_page#what',  as: :what
  get '/about/porque',           to: 'static_page#why',  as: :why

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  root "galleries#index"

end
