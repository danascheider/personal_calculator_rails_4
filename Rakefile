# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

unless ENV["RAILS_ENV"] == "production"
  require "rambo"

  Rambo::Rake::Task.new
end

PersonalCalculatorRails4::Application.load_tasks
