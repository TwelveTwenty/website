Website::Application.routes.draw do

  resources :artworks

  resources :goodies

  match 'apps/:app' => 'apps#show', :constraints => {:name => /(gettogether|willitfit|uberlayer)/i}
  match 'apps' => 'apps#index'
  match 'contact' => 'contact#index'
  match 'about' => 'about#index'
  match 'home' => 'home#index', :path => '/'

  root to: 'home#index'

  resources :blogs, :path => 'blog'

  #OmniAuth methods
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

end
