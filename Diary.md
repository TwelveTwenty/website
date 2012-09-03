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

# Wednesday, August 15th 2012

* `10:01` I had a problem with iOS' viewport property, if you put it to `content="width=device-width"` the document becomes the extact width of the device, not the max width of the content. I fixed this with a min-width on the body.
* `10:58` Have been working on a new layout system, therefor I have been looking at Twitter Bootstrap, to see how they do it. I also changed the column widths to be in whole pixels. (full site is 762px and the margins are 24px)

This is the layout's css

    .container {
    	width: 762px;
    	margin: 0 auto;
    }

    .row {
    	margin-bottom: 24px;
    }

    .row::after {
    	clear: both;
    }

    .row::before, .row::after {
    	display: table;
    	content: "";
    }

    .one-third, .half, .full {
    	float: left;
    	margin-left: 24px;
    }

    .one-third {
    	width: $column-at-one-third;
    }

    .half {
    	width: $column-at-half;
    }

    .full {
    	width: $column-at-full;
    }

    /** This is inspired by Twitter Bootstrap */

    // For desktops
    .visible-phone     { display: none !important; }
    .visible-tablet    { display: none !important; }
    .visible-desktop   { } // Don't set initially
    .hidden-phone      { }
    .hidden-tablet     { }
    .hidden-desktop    { display: none !important; }


    // Phones only
    @media (max-width: $site-width) {

    	body, html {
    		min-width: $site-width-mobile;
    	}

    	.container {
    		width: $site-width-mobile;
    	}

    	.one-third, .half, .full {
    		width: $column-at-half;
    		margin-bottom: 24px;
    	}

    	.row {
    		margin-bottom: 0px;
    	}

    	.visible-phone     { display: inherit !important; }
    	.hidden-phone      { display: none !important; }
    	.hidden-desktop    { display: inherit !important; }
    	.visible-desktop   { display: none !important; }
    }

    // Bigger than phone
    @media (min-width: $site-width) {

    	.visible-tablet    { display: inherit !important; }
    	.hidden-tablet     { display: none !important; }
    	.hidden-desktop    { display: inherit !important; }
    	.visible-desktop   { display: none !important ; }
    }

# Monday, August 20th 2012

* `13:43` Just finished the Contact page, is pretty straight forward with the css I created last week
* `16:17` Just finished the blog layout, needs some new assets though found this neat Rails trick..

Add a link with a block, so you can add HTML content

    <%= link_to blog do %>
    	<h1><%= blog.title %></h1>
    <% end %>

# Tuesday, August 21th 2012

* Doing a lot of css coding, nothing special to tell in the diary

# Wednesday, August 22th 2012

* Doing a lot of css coding, nothing special to tell in the diary
* Added the CarrierWave gem, to provide uploading to the app
* Setup an Heroku instance to test the applicaiton on

# Friday, August 24th

* Added authentication to Goodies controller and Blog controller
* Defined a method 'authenticate' in the ApplicationController for the authentication
* Added a before_filter in GoodiesController and BlogController
* Added an array with valid Admin Facebook id's (maybe I'll make an UI later)
* Scaffolded a controller and views for Images, those images can be used in Blog posts and Goodies


# Monday, september 3th

* installed the [friendly_id])(https://github.com/norman/friendly_id) gem for nicer urls with blogs and goodies
* On the server i could run the rails console, found out that the `libreadline-dev` wasn't installed, did this on the server to get it working

	apt-get install libreadline-dev

	#recompile ruby
	rbenv install 1.9.3-p194

	#restart app
	touch tmp/restart.txt

	# start console in production environment
	rails console production


