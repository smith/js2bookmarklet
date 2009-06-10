# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{js2bookmarklet}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan L Smith"]
  s.date = %q{2009-06-09}
  s.default_executable = %q{js2bookmarklet}
  s.description = %q{Utility to create a bookmarklet from a JavaScript file}
  s.email = ["nlloyds@gmail.com"]
  s.executables = ["js2bookmarklet"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "bin/js2bookmarklet", "lib/js2bookmarklet.rb", "pkg/js2bookmarklet-0.0.1.gem", "test/test_js2bookmarklet.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/smith/js2bookmarklet}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{js2bookmarklet}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Utility to create a bookmarklet from a JavaScript file}
  s.test_files = ["test/test_js2bookmarklet.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jsmin>, [">= 0"])
      s.add_development_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<jsmin>, [">= 0"])
      s.add_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<jsmin>, [">= 0"])
    s.add_dependency(%q<newgem>, [">= 1.4.1"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
