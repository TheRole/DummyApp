source 'https://rubygems.org'

gem 'rails', '4.2.0'

gem 'pg'
gem 'mysql2'
gem 'sqlite3'

# User Model
gem 'devise'

# Bootstrap 3
gem 'bootstrap-sass', '~> 3.3.1'
gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails'

#~~~~~~~~~~~~~~~~~ TheRole ~~~~~~~~~~~~~~~~~#
gem 'the_role',
  # github: 'TheRole/TheRoleApi',
  # branch: 'master'
  # tag: "v2.8"
  path: '../TheRoleApi'

gem 'the_role_management_panel',
  # github: 'TheRole/TheRoleManagementPanel',
  # branch: 'master'
  # tag: "v2.8"
  path: "../the_role_management_panel"

gem 'the_notification',
  github: 'TheProfitCMS/the_notification',
  branch: 'master'
#~~~~~~~~~~~~~~~~~ TheRole ~~~~~~~~~~~~~~~~~#

# Other
gem 'faker'
gem 'uglifier'
gem 'pry-rails'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.0.1'

group :test do
  gem 'minitest'
  gem "minitest-rails"
  gem 'test-unit' if RUBY_VERSION >= '2.2'

  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'

  %w[
    rspec-core
    rspec-expectations
    rspec-mocks
    rspec-rails
    rspec-support
  ].each do |lib|
    gem lib, :git => "git://github.com/rspec/#{lib}.git", :branch => 'master'
  end
end
