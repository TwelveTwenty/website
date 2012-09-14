Website::Application.routes.draw do

  # apps
  match 'apps/:app' => 'apps#show', :constraints => {:name => /(gettogether|willitfit|uberlayer)/i}
  match 'apps' => 'apps#index'

  # - old urls
  match 'uberlayer', to: redirect('/apps/uberlayer')
  match 'willitfit', to: redirect('/apps/willitfit')
  match 'gettogether', to: redirect('/apps/gettogether')

  # - apps with dashes
  match 'will-it-fit', to: redirect('/apps/willitfit')
  match 'get-together', to: redirect('/apps/gettogether')

  # - apps abbreviations
  match 'ul', to: redirect('/apps/uberlayer')
  match 'wf', to: redirect('/apps/willitfit')
  match 'gt', to: redirect('/apps/gettogether')

  # static pages
  match 'contact' => 'contact#index'
  match 'about' => 'about#index'
  match 'home' => 'home#index', :path => '/'

  # restful resources
  resources :artworks
  resources :goodies
  resources :blogs, :path => 'blog'

  #OmniAuth methods
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  # root url
  root to: 'home#index'

end
