# Learning Rails
Learing Rails with a tutorial from RailsApps project.
Github for repository, Rails 5.0.1 is Framework, Ruby 2.3.0 is platform, Cloud9 is IDE and envairoment

New data type in Ruby is Symbol:
Vietnamese is: http://phocode.com/ruby/ruby-kieu-du-lieu-phan-1/
English is here:https://en.wikibooks.org/wiki/Ruby_Programming/Data_types#symbol

Structure to call a method, maybe some-one will feed confusion with that
https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls

"figaro" gem to create envairoment variable and don't push to github to hidden some token
for outer services.

"high_voltage" gem create a hidden controller point to folder "views/pages" to inherite 
layout with just html file

"better_errors" gem for development to eseay show where the code line is error
 
"rails_layout" gem for development to quickly create layout for application base on
popular front-end framework as Bootstrap, Foundatetion

In this time 17/Feb/2017, The "ActiveRecord-Tableless" is not supported for Rails 5.x
Alternative way to implement here: https://github.com/softace/activerecord-tableless/issues/30

gem 'bootstrap-sass' and 'sass-rails' to use the Twitter Bootstrap and handle *.sass file files,
The "Asset Pipeline" will merge and compact all javascript and stylesheets file in application.html.erb

gem "simple_form" to create a form in html by "Rails Way"

"google_drive" gem to drive file to Google Drive or Spreadsheet. 
Must have credential for remote to Google Drive

Sending mail needs model, view and mailer to send email to outer

Access google drive and send maill needs more time to hanle, So that can implement asynchronously (queueing system). That is advance topic of Rails

"gibbon" gem to wrap the "MailChimpAPI" for mailing list

There are 2 kinds of instance variable is "self" and "@": That are different can read here: http://stackoverflow.com/questions/1693243/instance-variable-self-vs
