require 'rubygems'
require 'bundler'
require 'bundler/setup'
require 'parallel_tests/tasks'
require 'cucumber/rake/task'
require 'shellwords'

# Cucumber::Rake::Task.new(:features) do |features|
#   features.cucumber_opts = "features -p selenium --format progress --format json --out=report/features_report.json"
# end

Cucumber::Rake::Task.new(:cuke) do |t|
  t.cucumber_opts = %w{--format progress --format html --out=report/features_report.html }
end

# task :default => :features
# task :default => :features