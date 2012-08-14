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

* `19:00` I found the problem!

Seems that the Rails scaffold generate generates a broken view, this is what's get generated:

    <%= f.label :name %>

That gives this error: `no implicit conversion from nil to integer`. This can be solved if you change it to this:

    <%= f.label :name, "name" %>

That's a good way to end the day!


# Tuesday, August 14th 2012

* `07:34` I am continuing with the work I started yesterday, which is getting blog posts in the website. The first thing I want is use seeds so I can insert the blog posts from our current blog into the database

* `07:47` Forgot to add a body column to the blog model, that's why I ran this generator

In the terminal: 

    rails g migration add_body_to_blogs blog:text 

This generates: 

    class AddBodyToBlogs < ActiveRecord::Migration
      def change
        add_column :blogs, :body, :text
      end
    end

This is my current schema

    ActiveRecord::Schema.define(:version => 20120814054648) do
    
      create_table "blogs", :force => true do |t|
        t.string   "name"
        t.string   "title"
        t.string   "author"
        t.datetime "created_at", :null => false
        t.datetime "updated_at", :null => false
        t.text     "body"
      end
    
    end

* `08:04` I just ran into a problem using a seed file: `/db/seeds.rb:20: invalid multibyte char (US-ASCII)`. I solved this by putting `# encoding: UTF-8` at the top of my Seed file
* `13:22` Working on the CSS of the homepage