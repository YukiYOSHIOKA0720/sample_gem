require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rake/extensiontask"

RSpec::Core::RakeTask.new(:spec)

Rake::ExtensionTask.new("yoshioka_gem") do |ext|
    ext.lib_dir = "lib/yoshioka_gem"
end

task :default => :spec
