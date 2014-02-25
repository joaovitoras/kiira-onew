KiiraOnew::Application.routes.draw do
  resources :mains

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :drawings
  root "drawings#index"

end
