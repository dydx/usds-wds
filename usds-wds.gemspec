lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
Gem::Specification.new do |s|
  s.name        = 'usds-wds'
  s.version     = '0.1.0'
  s.date        = '2015-10-01'
  s.summary     = 'Rails generator Gem for the USDS WDS components'
  s.description = 'Rails generator Gem for the USDS WDS components'
  s.authors     = ['Josh Sandlin']
  s.email       = 'josh@thenullbyte.org'
  s.files       = `git ls-files`.split($/)
  s.require_paths = ['lib']
  s.homepage    = 'http://dydx.github.io/usds-wds'
  s.license     = 'MIT'
end
