require "rake/testtask"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "js2bookmarklet"
    gemspec.description = "Utility to create a bookmarklet from a JavaScript file"
    gemspec.summary = ""
    gemspec.email = "nlloyds@gmail.com"
    gemspec.homepage = "http://github.com/smith/js2bookmarklet/"
    gemspec.authors = ["Nathan L Smith"]
    gemspec.add_dependency("jsmin")
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/test*.rb"]
  t.verbose = true
end

task :default => [:test]
