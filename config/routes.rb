KiiraOnew::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :drawings
  root "drawings#index"

end
