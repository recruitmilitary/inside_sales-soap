# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{inside_sales-soap}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Guterl"]
  s.date = %q{2010-05-19}
  s.description = %q{a Ruby SOAP client for interacting with the InsideSales API.  This library is mostly automatically generated files from soap4r at this point.}
  s.email = %q{mguterl@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "inside_sales-soap.gemspec",
     "lib/inside_sales/soap.rb",
     "lib/inside_sales/soap/AllInsideSalesServicesServiceClient.rb",
     "lib/inside_sales/soap/default.rb",
     "lib/inside_sales/soap/defaultDriver.rb",
     "lib/inside_sales/soap/defaultMappingRegistry.rb",
     "lib/inside_sales/soap/example.rb",
     "spec/inside_sales-soap_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/mguterl/inside_sales-soap}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{a Ruby SOAP client for interacting with the InsideSales API}
  s.test_files = [
    "spec/inside_sales-soap_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

