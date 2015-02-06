source 'https://rubygems.org'

gem 'rails', '4.2.0'
# gem 'rails', '3.2.21'
# gem 'strong_parameters'

gem 'pg'
gem 'mysql2'
gem 'sqlite3'

# User Model
gem 'devise'

#~~~~~~~~~~~~~~~~~ TheRole ~~~~~~~~~~~~~~~~~#
# gem 'the_role', '~> 3.0.1'
  # github: 'the-teacher/the_role',
  # branch: 'master'

gem 'the_role_api', '~> 3.0.1',
  # path: '../the_role_api'
  github: 'TheRole/the_role_api',
  branch: 'master'

gem 'the_role_management_panel', '~> 3.0.1',
  # path: '../the_role_management_panel'
  github: 'TheRole/the_role_management_panel',
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
