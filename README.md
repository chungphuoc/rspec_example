== README

GUIDE:

add followings gem to Gemfile
```ruby
group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', require: false
  gem 'ffaker'
  gem 'simplecov'
end
```

run:
```
bundle install
```
```
rails g rspec:install
```
add to rails_helper.rb
```ruby
  require 'shoulda-matchers'
  require 'simplecov'
  SimpleCov.start

  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end
```

Run the rspec

```
bundle exec rspec spec/
```

Check code in spec/models and spec/controllers for more detail of this example.