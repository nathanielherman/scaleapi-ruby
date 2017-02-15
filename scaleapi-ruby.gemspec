# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scale'

Gem::Specification.new do |spec|
  spec.name          = "scaleapi"
  spec.version       = Scale::VERSION
  spec.authors       = ["Jarred Sumner"]
  spec.email         = ["jarred@jarredsumner.com"]

  spec.summary       = %q{Official Ruby Client for Scale API}
  spec.description   = %q{Scale is an API For Human Intelligence. Get high quality results for all sorts of tasks within minutes. This is the official Ruby client.}
  spec.homepage      = "https://www.scaleapi.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "activesupport", "5.0.1"
  spec.add_dependency "faraday", "0.11.0"
end