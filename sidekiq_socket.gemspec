
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sidekiq_socket/version"

Gem::Specification.new do |spec|
  spec.name          = "sidekiq_socket"
  spec.version       = SidekiqSocket::VERSION
  spec.authors       = ["NishantUpadhyay-BTC"]
  spec.email         = ["nishantupadhyay@botreetechnologies.com"]

  spec.summary       = "This gem is for testing sidekiq with a socket"
  spec.description   = "Trying to connect to socket, fetch data and send it to Redis via Sidekiq"
  spec.homepage      = 'https://github.com/NishantUpadhyay-BTC/sidekiq_socket.git'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sidekiq", '~> 0'

end
