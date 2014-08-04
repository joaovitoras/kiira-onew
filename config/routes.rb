KiiraOnew::Application.routes.draw do

  devise_for :users

  resources :galleries do
  	resources :drawings
  end

  resources :sales do 
    resources :products
  end
  
  match '/send_mail',          to: 'galleries#send_mail',         via: 'post'
  get 'news',                  to: 'news#index',                  as: :news
  get '/about/quem',           to: 'static_page#who',             as: :who
  get '/about/oque',           to: 'static_page#what',            as: :what
  get '/about/porque',         to: 'static_page#why',             as: :why

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'galleries#index'

end
