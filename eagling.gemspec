# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eagling/version'

Gem::Specification.new do |spec|
  spec.name          = "eagling"
  spec.version       = Eagling::VERSION
  spec.authors       = ["Sajjad Murtaza (01770)"]
  spec.email         = ["sajjad.murtaza@nxb.com.pk"]

  spec.summary       = %q{Add Extra Columns like timestamps }
  spec.description   = %q{This gem add deleted_at and last_view_at columns.}
  spec.homepage      = "https://github.com/sajjadmurtaza49/eagling"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
