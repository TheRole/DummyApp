source 'https://rubygems.org'

# User Model
gem 'devise', '4.2.0'

if ENV['RUBY_VERSION'] =~ /(1.9)/
  gem 'pg', '0.18.4'
  gem 'mime-types', '2.6.2'
else
  gem 'pg', '0.20.0'
end

if ENV['RUBY_VERSION'] =~ /(1.9)|(2.0)/
  gem 'nokogiri', '1.6.8.1'
end

case ENV['TEST_ENV']
  when '3'
    eval_gemfile "gemfiles/3.2.22.5.gemfile"
  when '4.0'
    eval_gemfile "gemfiles/4.0.gemfile"
  when '4.1'
    eval_gemfile "gemfiles/4.1.gemfile"
  else
    eval_gemfile "gemfiles/4.2.gemfile"
end

# Other
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
