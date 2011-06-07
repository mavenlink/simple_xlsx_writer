require 'rake/testtask'
require 'bundler'

task :default => [:test]

Rake::TestTask.new do |test|
  test.libs       << "test"
  test.test_files =  Dir['test/**/*_test.rb']
  test.verbose    =  true
end

Bundler::GemHelper.install_tasks
