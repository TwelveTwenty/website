Website::Application.routes.draw do

  match 'apps/:app' => 'apps#show', :constraints => { :name => /(gettogether|willitfit|uberlayer)/i }
  match 'apps' => 'apps#index'
  match 'contact' => 'contact#index'
  match 'about' => 'about#index'
  match 'home' => 'home#index', :path => '/'

end
