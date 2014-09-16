require 'rubygems'
require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'

Bundler::GemHelper.install_tasks

namespace :features do
  Cucumber::Rake::Task.new(:watir_webdriver, "Run features with Watir") do |t|
    t.profile = "watir_webdriver"
  end

  Cucumber::Rake::Task.new(:selenium_webdriver, "Run features with Selenium") do |t|
    t.profile = "selenium_webdriver"
  end

  desc 'Run all features'
  task :all => [:watir_webdriver, :selenium_webdriver]
end

desc 'Run all cukes'
task :test => ['features:all']

task :lib do
  $LOAD_PATH.unshift(File.expand_path("lib", File.dirname(__FILE__)))
end

task :default => :test
