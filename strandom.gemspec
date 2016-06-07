Gem::Specification.new do |s|
  s.name         = 'strandom'
  s.version      = '2.0'
  s.date         = '2016-06-07'
  s.summary      = 'Thoom Strandom: A random string generator'
  s.description  = 'An executable for generating a random string'
  s.authors      = ['Z.d. Peacock']
  s.email        = 'zdp@thoomtech.com'
  s.has_rdoc = false
  s.require_path = 'lib'
  s.files        = %w( README.md LICENSE )
  s.files        += Dir.glob('lib/**/*')
  s.files        += Dir.glob('bin/**/*')
  s.homepage     = 'http://github.com/thoom/strandom'
  s.license      = 'MIT'

  s.executables << 'strandom'
end
