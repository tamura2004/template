# sample application

generate :types, "group infra"
generate :types, "job butyo spm katyo pm tl cf as"
generate :types, "server"
generate :types, "startup"
generate :types, "accout"

generate :model, :user, "number name job:integer group:integer"
generate :model, :service, "number name group:integer"
generate :model, :software, "name version edition"
generate :model, :server, "name hostname server_type:integer sequence_number:integer service:references"
generate :model, :server_info, "server:references account:integer startup:integer"
generate :model, :install, "server:references software:references"
generate :model, :cpu_memory_price, "cpu:integer memory:integer price:integer"
generate :model, :resource, "server:references cpu_memory_price:references status start_date:date end_date:date"
generate :model, :disk_type, "name"
generate :model, :disk, "resource:references disk_type:references sequence_number:integer size:integer"
generate :scaffold, :order, "server:references reception_date:date start_date:date user:references"

run "sed -i -e '/error_span/d' app/views/**/*.slim"
run "sed -i -e '/apple-touch-icon/d' app/views/**/*.slim"
run "sed -i -e '/favicon.ico/d' app/views/**/*.slim"
run "sed -i -e 's/human.pluralize.titleize/human.titleize/g' app/views/**/*.slim"

run "rm app/assets/stylesheets/scaffolds.scss"
run "rm app/views/layouts/application.html.erb"

run "rails db:migrate"
run "rails g i18n ja"
run "rails s"