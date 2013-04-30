require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
require 'spree/testing_support/common_rake'

RSpec::Core::RakeTask.new

task :default => [:spec]

desc 'Generates a dummy app for testing'
task :test_app do
  ENV['LIB_NAME'] = 'spree_editor'
  Rake::Task['common:test_app'].invoke
  cmd = "bundle exec rails generate ckeditor:install --orm=active_record --backend=paperclip"
  puts "install ckeditor uploader"
  run_command(cmd)
  cmd = "bundle exec rake db:migrate RAILS_ENV=test"
  run_command(cmd)
end

def run_command(cmd)
  if RUBY_PLATFORM =~ /mswin/ #windows
    cmd += " >nul"
  else
    cmd += " >/dev/null"
  end
  system(cmd)
end