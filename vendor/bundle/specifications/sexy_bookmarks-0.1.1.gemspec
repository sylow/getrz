# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sexy_bookmarks"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Enrique Vidal"]
  s.date = "2010-07-30"
  s.description = "SexyBookmarks is only a rails port of wordpress popular plugin sexy bookmarks."
  s.email = "enrique@cloverinteractive.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://github.com/EnriqueVidal/sexy_bookmarks"
  s.rdoc_options = ["--charset=UTF-8", "--exclude=lib/sexy_bookmarks/assets"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "An easy to use rails port of sexybookmarks"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
