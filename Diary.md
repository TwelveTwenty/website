# Monday, August 13th 2012

* `9:00` I just ran the Rails installer, and the current Rails version is 3.2.8
* `9:30` Had a Skype call with Eric-Paul to explain how to install `rbenv` and `rubybuild`, which is still pretty hard to install
* `10:00` After running the Rails install i stumbled upon [this Rails gem](https://github.com/khelben/rails-boilerplate) to provide easy access to [HTML5 Boilerplate](http://html5boilerplate.com)
* `12:00` Studying the designs to see what patterns I find
* `12:33` I tried running the application in production mode but I found out the stylesheets and javascript files weren't loading (even after I ran the `rake asset:precompile` command). This is because thin doesn't server the static files. See [this Stack Overflow post](http://stackoverflow.com/questions/7829480/no-route-matches-get-assets) for more details.
* `12:46` Adding the first raw HTML output without styling in the layout file
* `16:05` I am now working through the designs, and making plain HTML pages so Eric Paul can edit the copy
* `17:00` Just created a controller for our apps `apps_controller` with two actions; `index` and `show` the routes for this controller are:

## routes for the apps_controller

    match 'apps/:appname' => 'apps#show', :constraints => { :name => /(gettogether|willitfit|uberlayer)/i }
    match 'apps' => 'apps#index'

* `18:25` Got stuck on generating the blog, got this error: `no implicit conversion from nil to integer`.
* `18:39` Generated the Home controller and added some routes, this is my current routes file:

## Routes file (per 13 august):

    Website::Application.routes.draw do

      match 'apps/:app' => 'apps#show', :constraints => { :name => /(gettogether|willitfit|uberlayer)/i }
      match 'apps' => 'apps#index'
      match 'contact' => 'contact#index'
      match 'about' => 'about#index'
      match 'home' => 'home#index', :path => '/'

    end
