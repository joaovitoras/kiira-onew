KiiraOnew::Application.routes.draw do
  match '/webhooks/gh/pull_request', :to => 'github#create', via: :post

  resources :orders

  devise_for :users

  resources :galleries, path: "galerias" do
  	resources :drawings, path: "desenhos"
  end

  resources :sales, path: "vendas" do 
    resources :products, path: "produtos"
  end
  
  match '/send_mail',          to: 'galleries#send_mail',         via: 'post'
  get 'news',                  to: 'news#index',                  as: :news
  get '/sobre/quem',           to: 'static_page#who',             as: :who
  get '/sobre/oque',           to: 'static_page#what',            as: :what
  get '/sobre/porque',         to: 'static_page#why',             as: :why

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get "sitemaps/:name" => "galleries#sitemaps", format: :xml, as: :sitemaps


  root 'galleries#index'

end
