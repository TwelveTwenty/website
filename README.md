# Twelve Twenty;

[Twelve Twenty](http://twelvetwenty.nl) is a small Startup from Amsterdam. We make apps you didn't know you needed.

We decided to open source the development of our new website because we hope to help other people by showing our workflow. 

# Development setup

The website is built using [Ruby on Rails](http://weblog.rubyonrails.org/2012/8/9/ann-rails-3-2-8-has-been-released/) 3.2.8. We use [Jenkins](http://jenkins-ci.org/) to build to publish the `master` branch to our server.

We develop the website in the `develop` branch, we use [Git Flow](https://github.com/nvie/gitflow/). The `master` branch contains stable releases

# How to run the project

Ensure you have the latest version of Ruby I'm using 1.9.3p194

    $ ruby -v
    # ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin12.0.0]

If you don't have the latest consider installing [rbenv](https://github.com/sstephenson/rbenv/#section_2) and [Ruby build](https://github.com/sstephenson/ruby-build#installation)

Open the terminal and install `bundler`

    $ gem install bundler

    # Successfully installed bundler-1.1.5
    # 1 gem installed
    # Installing ri documentation for bundler-1.1.5...
    # Installing RDoc documentation for bundler-1.1.5...


Clone the project from Github using this command:

    git clone git://github.com/TwelveTwenty/website.git

Change into the new directory, then run `bundle install` to install al dependencies 

    $ bundle install
    # Fetching gem metadata from https://rubygems.org/.......
    # Using rake (0.9.2.2) 
    # Installing i18n (0.6.0) 
    # Using multi_json (1.3.6) 
    # Installing activesupport (3.2.8) 
    # [... etc ...]
    # Installing sqlite3 (1.3.6) with native extensions 
    # Installing uglifier (1.2.7) 
    # Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.
    # Post-install message from rdoc:
    # Depending on your version of ruby, you may need to install ruby rdoc/ri data:
    # 
    # <= 1.8.6 : unsupported
    #  = 1.8.7 : gem install rdoc-data; rdoc-data --install
    #  = 1.9.1 : gem install rdoc-data; rdoc-data --install
    # >= 1.9.2 : nothing to do! Yay!


## Running in development mode

Run the rake migrations to update your local database

	$ rake db:create
	$ rake db:migrate
	$ rake db:seed	
	
Then start the rails server with this command:

    $ rails server
    # => Booting WEBrick
    # => Rails 3.2.8 application starting in development on http://0.0.0.0:3000
    # => Call with -d to detach
    # => Ctrl-C to shutdown server
    # [2012-08-13 10:23:11] INFO  WEBrick 1.3.1
    # [2012-08-13 10:23:11] INFO  ruby 1.9.3 (2012-04-20) [x86_64-darwin12.0.0]
    # [2012-08-13 10:23:11] INFO  WEBrick::HTTPServer#start: pid=6818 port=3000
    
Open your web browser at 127.0.0.1:3000 to view the project

## Running in production mode

Run these rake tasks (I'm using the [asset pipeline](http://guides.rubyonrails.org/asset_pipeline.html))

	$ rake db:create RAILS_ENV=production
	$ rake db:migrate RAILS_ENV=production
	$ rake assets:precompile RAILS_ENV=production
	$ rake db:seed RAILS_ENV=production

Then start the rails server with this command:

    $ rails server --e=production                                                                                                         develop [fee530a] modified untracked
    # => Booting WEBrick
    # => Rails 3.2.8 application starting in production on http://0.0.0.0:3000
    # => Call with -d to detach
    # => Ctrl-C to shutdown server
    # [2012-08-13 12:27:46] INFO  WEBrick 1.3.1
    # [2012-08-13 12:27:46] INFO  ruby 1.9.3 (2012-04-20) [x86_64-darwin12.0.0]
    # [2012-08-13 12:27:46] INFO  WEBrick::HTTPServer#start: pid=12697 port=3000

Open your web browser at 127.0.0.1:3000 to view the project