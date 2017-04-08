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
end

run "bundle install"

# after_bundle do

  generate "simple_form:install", "--bootstrap"
  generate "bootstrap:install", "static"
  generate "bootstrap:layout", "application"

  generate :model, "server number name cpu memory"
  generate :model, "disk name size:integer server:references"
  generate :model, "order server:references reception_date:date start_date:date"

  inject_into_file "app/models/server.rb", before: "end" do
    "  has_many :disks\n  has_many :orders\n"
  end

  inject_into_file "config/database.yml", after: "development:" do
    "\n  username: tamura\n  password: tamura"
  end

  # inject_into_file "app/assets/stylesheets/application.css", after: " *= require_tree ." do
  #   "\n *= require rails_bootstrap_forms"
  # end

  run "rails db:drop"
  run "rails db:create"
  run "rails db:migrate"

  # generate "bootstrap:themed", "Servers", "--force"
  # generate "bootstrap:themed", "Disks", "--force"
  # generate "bootstrap:themed", "Orders", "--force"

  run "sed -i -e '/error_span/d' app/views/**/*.slim"
  run "sed -i -e '/apple-touch-icon/d' app/views/**/*.slim"
  run "sed -i -e '/favicon.ico/d' app/views/**/*.slim"
  run "sed -i -e 's/human.pluralize.titleize/human.titleize/g' app/views/**/*.slim"

  generate "rails_admin:install"
  generate :i18n, "ja"

  run "rm app/assets/stylesheets/scaffolds.scss"
  run "rm app/views/layouts/application.html.erb"

  # route "root to: 'servers#index'"
  run "rails s"
# end



