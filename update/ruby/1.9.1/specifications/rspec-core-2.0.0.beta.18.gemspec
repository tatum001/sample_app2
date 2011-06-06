# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-core}
  s.version = "2.0.0.beta.18"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chad Humphries", "David Chelimsky"]
  s.date = %q{2010-07-21}
  s.default_executable = %q{rspec}
  s.description = %q{RSpec runner and example groups}
  s.email = %q{dchelimsky@gmail.com;chad.humphries@gmail.com}
  s.executables = ["rspec"]
  s.files = ["spec/autotest/failed_results_re_spec.rb", "spec/autotest/rspec_spec.rb", "spec/rspec/core/command_line_configuration_spec.rb", "spec/rspec/core/command_line_spec.rb", "spec/rspec/core/configuration_options_spec.rb", "spec/rspec/core/configuration_spec.rb", "spec/rspec/core/core_spec.rb", "spec/rspec/core/deprecations_spec.rb", "spec/rspec/core/drb_command_line_spec.rb", "spec/rspec/core/example_group_spec.rb", "spec/rspec/core/example_spec.rb", "spec/rspec/core/formatters/base_formatter_spec.rb", "spec/rspec/core/formatters/base_text_formatter_spec.rb", "spec/rspec/core/formatters/documentation_formatter_spec.rb", "spec/rspec/core/formatters/helpers_spec.rb", "spec/rspec/core/formatters/html_formatter_spec.rb", "spec/rspec/core/formatters/progress_formatter_spec.rb", "spec/rspec/core/formatters/snippet_extractor_spec.rb", "spec/rspec/core/formatters/text_mate_formatter_spec.rb", "spec/rspec/core/hooks_spec.rb", "spec/rspec/core/kernel_extensions_spec.rb", "spec/rspec/core/let_spec.rb", "spec/rspec/core/metadata_spec.rb", "spec/rspec/core/option_parser_spec.rb", "spec/rspec/core/pending_example_spec.rb", "spec/rspec/core/resources/a_bar.rb", "spec/rspec/core/resources/a_foo.rb", "spec/rspec/core/resources/a_spec.rb", "spec/rspec/core/resources/custom_example_group_runner.rb", "spec/rspec/core/resources/formatter_specs.rb", "spec/rspec/core/resources/utf8_encoded.rb", "spec/rspec/core/ruby_project_spec.rb", "spec/rspec/core/runner_spec.rb", "spec/rspec/core/shared_example_group_spec.rb", "spec/rspec/core/subject_spec.rb", "spec/rspec/core/world_spec.rb", "spec/ruby_forker.rb", "spec/spec_helper.rb", "spec/support/matchers.rb", "bin/rspec"]
  s.homepage = %q{http://github.com/rspec/rspec-core}
  s.post_install_message = %q{**************************************************

  Thank you for installing rspec-core-2.0.0.beta.18

  Please be sure to look at Upgrade.markdown to see what might have changed
  since the last release.

**************************************************
}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{rspec-core-2.0.0.beta.18}
  s.test_files = ["spec/autotest/failed_results_re_spec.rb", "spec/autotest/rspec_spec.rb", "spec/rspec/core/command_line_configuration_spec.rb", "spec/rspec/core/command_line_spec.rb", "spec/rspec/core/configuration_options_spec.rb", "spec/rspec/core/configuration_spec.rb", "spec/rspec/core/core_spec.rb", "spec/rspec/core/deprecations_spec.rb", "spec/rspec/core/drb_command_line_spec.rb", "spec/rspec/core/example_group_spec.rb", "spec/rspec/core/example_spec.rb", "spec/rspec/core/formatters/base_formatter_spec.rb", "spec/rspec/core/formatters/base_text_formatter_spec.rb", "spec/rspec/core/formatters/documentation_formatter_spec.rb", "spec/rspec/core/formatters/helpers_spec.rb", "spec/rspec/core/formatters/html_formatter_spec.rb", "spec/rspec/core/formatters/progress_formatter_spec.rb", "spec/rspec/core/formatters/snippet_extractor_spec.rb", "spec/rspec/core/formatters/text_mate_formatter_spec.rb", "spec/rspec/core/hooks_spec.rb", "spec/rspec/core/kernel_extensions_spec.rb", "spec/rspec/core/let_spec.rb", "spec/rspec/core/metadata_spec.rb", "spec/rspec/core/option_parser_spec.rb", "spec/rspec/core/pending_example_spec.rb", "spec/rspec/core/resources/a_bar.rb", "spec/rspec/core/resources/a_foo.rb", "spec/rspec/core/resources/a_spec.rb", "spec/rspec/core/resources/custom_example_group_runner.rb", "spec/rspec/core/resources/formatter_specs.rb", "spec/rspec/core/resources/utf8_encoded.rb", "spec/rspec/core/ruby_project_spec.rb", "spec/rspec/core/runner_spec.rb", "spec/rspec/core/shared_example_group_spec.rb", "spec/rspec/core/subject_spec.rb", "spec/rspec/core/world_spec.rb", "spec/ruby_forker.rb", "spec/spec_helper.rb", "spec/support/matchers.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec-expectations>, [">= 2.0.0.beta.18"])
      s.add_development_dependency(%q<rspec-mocks>, [">= 2.0.0.beta.18"])
      s.add_development_dependency(%q<cucumber>, [">= 0.5.3"])
      s.add_development_dependency(%q<autotest>, [">= 4.2.9"])
    else
      s.add_dependency(%q<rspec-expectations>, [">= 2.0.0.beta.18"])
      s.add_dependency(%q<rspec-mocks>, [">= 2.0.0.beta.18"])
      s.add_dependency(%q<cucumber>, [">= 0.5.3"])
      s.add_dependency(%q<autotest>, [">= 4.2.9"])
    end
  else
    s.add_dependency(%q<rspec-expectations>, [">= 2.0.0.beta.18"])
    s.add_dependency(%q<rspec-mocks>, [">= 2.0.0.beta.18"])
    s.add_dependency(%q<cucumber>, [">= 0.5.3"])
    s.add_dependency(%q<autotest>, [">= 4.2.9"])
  end
end
