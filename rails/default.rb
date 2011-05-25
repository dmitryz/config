run "export RAILS_DEFAULT_DATABASE=mysql"
run "rm .gitignore"
run "rm Gemfile"
run 'rm README'
run 'rm public/index.html'
run 'rm public/images/rails.png'
run 'rm public/javascripts/controls.js'
run 'rm public/javascripts/dragdrop.js'
run 'rm public/javascripts/effects.js'
run 'rm public/javascripts/prototype.js'
run 'rm public/javascripts/rails.js'

#gem 'mysql2', '< 0.3'
#gem 'jquery-rails'
#gem 'dynamic_form'
#gem "will_paginate", "~> 3.0.pre2"


create_file 'Gemfile', <<-GEMFILE
source 'http://rubygems.org'
gem 'rails', '~> 3.0.7'
gem "mysql2", "< 0.3"
gem "jquery-rails"
gem "dynamic_form"
gem "will_paginate", "~> 3.0.pre2"
GEMFILE

create_file '.gitignore', <<-GITIGNORE
.bundle
.bashrc
.viminfo
db/*.sqlite3
bin/downloader
log/*.log
tmp/**/*
.ssh/*
*.swp
.DS\_Store
db/schema.rb
*.cache
firewatir/firefox/src
db/schema.rb
GITIGNORE

run 'bundle install'
generate 'jquery:install'

git :init
git :add => "."
git :commit => "-am 'initial'"
