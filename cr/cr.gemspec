# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cr/version'

Gem::Specification.new do |gem|
  gem.name          = "cr"
  gem.version       = Cr::VERSION
  gem.authors       = ["shiren1118"]
  gem.email         = ["shiren1118@126.com"]
  gem.description   = %q{shell command recorder: maybe somebody use it to make a tutorial use command,print used command to show}
  gem.summary       = %q{shell command recorder}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
