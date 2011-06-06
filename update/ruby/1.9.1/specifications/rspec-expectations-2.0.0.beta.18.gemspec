# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-expectations}
  s.version = "2.0.0.beta.18"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Chelimsky", "Chad Humphries"]
  s.date = %q{2010-07-21}
  s.description = %q{rspec expectations (should[_not] and matchers)}
  s.email = %q{dchelimsky@gmail.com;chad.humphries@gmail.com}
  s.files = ["spec/rspec/expectations/differ_spec.rb", "spec/rspec/expectations/extensions/kernel_spec.rb", "spec/rspec/expectations/fail_with_spec.rb", "spec/rspec/expectations/handler_spec.rb", "spec/rspec/matchers/be_close_spec.rb", "spec/rspec/matchers/be_instance_of_spec.rb", "spec/rspec/matchers/be_kind_of_spec.rb", "spec/rspec/matchers/be_spec.rb", "spec/rspec/matchers/change_spec.rb", "spec/rspec/matchers/compatibility_spec.rb", "spec/rspec/matchers/description_generation_spec.rb", "spec/rspec/matchers/dsl_spec.rb", "spec/rspec/matchers/eq_spec.rb", "spec/rspec/matchers/eql_spec.rb", "spec/rspec/matchers/equal_spec.rb", "spec/rspec/matchers/exist_spec.rb", "spec/rspec/matchers/has_spec.rb", "spec/rspec/matchers/have_spec.rb", "spec/rspec/matchers/include_spec.rb", "spec/rspec/matchers/match_array_spec.rb", "spec/rspec/matchers/match_spec.rb", "spec/rspec/matchers/matcher_spec.rb", "spec/rspec/matchers/matchers_spec.rb", "spec/rspec/matchers/operator_matcher_spec.rb", "spec/rspec/matchers/raise_error_spec.rb", "spec/rspec/matchers/respond_to_spec.rb", "spec/rspec/matchers/satisfy_spec.rb", "spec/rspec/matchers/throw_symbol_spec.rb", "spec/spec_helper.rb", "spec/suite.rb", "spec/support/classes.rb"]
  s.homepage = %q{http://github.com/rspec/expectations}
  s.post_install_message = %q{**************************************************

  Thank you for installing rspec-expectations-2.0.0.beta.18

**************************************************
}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{rspec-expectations-2.0.0.beta.18}
  s.test_files = ["spec/rspec/expectations/differ_spec.rb", "spec/rspec/expectations/extensions/kernel_spec.rb", "spec/rspec/expectations/fail_with_spec.rb", "spec/rspec/expectations/handler_spec.rb", "spec/rspec/matchers/be_close_spec.rb", "spec/rspec/matchers/be_instance_of_spec.rb", "spec/rspec/matchers/be_kind_of_spec.rb", "spec/rspec/matchers/be_spec.rb", "spec/rspec/matchers/change_spec.rb", "spec/rspec/matchers/compatibility_spec.rb", "spec/rspec/matchers/description_generation_spec.rb", "spec/rspec/matchers/dsl_spec.rb", "spec/rspec/matchers/eq_spec.rb", "spec/rspec/matchers/eql_spec.rb", "spec/rspec/matchers/equal_spec.rb", "spec/rspec/matchers/exist_spec.rb", "spec/rspec/matchers/has_spec.rb", "spec/rspec/matchers/have_spec.rb", "spec/rspec/matchers/include_spec.rb", "spec/rspec/matchers/match_array_spec.rb", "spec/rspec/matchers/match_spec.rb", "spec/rspec/matchers/matcher_spec.rb", "spec/rspec/matchers/matchers_spec.rb", "spec/rspec/matchers/operator_matcher_spec.rb", "spec/rspec/matchers/raise_error_spec.rb", "spec/rspec/matchers/respond_to_spec.rb", "spec/rspec/matchers/satisfy_spec.rb", "spec/rspec/matchers/throw_symbol_spec.rb", "spec/spec_helper.rb", "spec/suite.rb", "spec/support/classes.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
      s.add_development_dependency(%q<cucumber>, [">= 0.6.2"])
      s.add_development_dependency(%q<aruba>, [">= 0.1.1"])
      s.add_development_dependency(%q<rspec-core>, [">= 2.0.0.beta.18"])
      s.add_development_dependency(%q<rspec-mocks>, [">= 2.0.0.beta.18"])
    else
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
      s.add_dependency(%q<cucumber>, [">= 0.6.2"])
      s.add_dependency(%q<aruba>, [">= 0.1.1"])
      s.add_dependency(%q<rspec-core>, [">= 2.0.0.beta.18"])
      s.add_dependency(%q<rspec-mocks>, [">= 2.0.0.beta.18"])
    end
  else
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    s.add_dependency(%q<cucumber>, [">= 0.6.2"])
    s.add_dependency(%q<aruba>, [">= 0.1.1"])
    s.add_dependency(%q<rspec-core>, [">= 2.0.0.beta.18"])
    s.add_dependency(%q<rspec-mocks>, [">= 2.0.0.beta.18"])
  end
end
