gem "pg"
gem "therubyracer"
gem "execjs"
gem "twitter-bootstrap-rails"
gem "font-awesome-rails"
gem "seed-fu"
gem "slim-rails"
gem "roo", "~> 2.4.0"
gem "axlsx"
gem "zip-zip"
gem "rubyzip", "=1.1.0"
gem "axlsx_rails"
gem "vuejs-rails"
gem 'momentjs-rails'
gem "erubis"

gem "simple_form"
# gem "bootstrap_form"

gem "rails_admin"
gem "rails_admin-i18n"
gem "i18n_generators"

gem_group :development, :test do
  gem "spring-commands-rspec"
  gem "annotate"
  gem "rubocop"
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "rails-controller-testing"
  gem "pry-rails"
  gem "better_errors"
  gem "binding_of_caller"
end

run "bundle install"

generate "simple_form:install", "--bootstrap"
generate "bootstrap:install", "static"
generate "bootstrap:layout", "application"
generate "rspec:install"
generate "rails_admin:install"
generate "annotate:install"

append_file ".rspec", "--format documentation"


inject_into_file "config/database.yml", after: "default: &default" do
  "\n  username: tamura\n  password: tamura"
end

run "rails db:environment:set RAILS_ENV=development"
run "rails db:drop"
run "rails db:create"

run "rails app:template LOCATION=../sample_application.rb"
