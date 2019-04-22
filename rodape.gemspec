
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rodape/version"

Gem::Specification.new do |spec|
  spec.name          = "rodape"
  spec.version       = Rodape::VERSION
  spec.authors       = ["Pedro Henrique Alves Mourão Ceobaniuc"]
  spec.email         = ["pedroceobaniuc25@gmail.com"]

  spec.summary       = %q{Vários métodos específicos de visualização para aplicativos que uso}
  spec.description   = %q{Fornece dados HTML gerados para aplicativos Rails.}
  spec.homepage      = "https://github.com/Ceobaniuc/rodape.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
