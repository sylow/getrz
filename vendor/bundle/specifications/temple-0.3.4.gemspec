# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "temple"
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Magnus Holm", "Daniel Mendler"]
  s.date = "2011-09-02"
  s.email = ["judofyr@gmail.com", "mail@daniel-mendler.de"]
  s.homepage = "http://dojo.rubyforge.org/"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Template compilation framework in Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<tilt>, [">= 0"])
      s.add_development_dependency(%q<bacon>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<bacon>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<bacon>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end