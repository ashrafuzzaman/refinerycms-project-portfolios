Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-project-portfolios'
  s.version           = '1.0'
  s.author            = 'A.K.M. Ashrafuzzaman'
  s.email             = %q{ashrafuzzaman.g2@gmail.com}
  s.homepage          = %q{http://www.ashrafuzzaman.com}
  s.description       = 'Ruby on Rails Project Portfolios engine for Refinery CMS'
  s.date              = '2011-11-18'
  s.summary           = 'Project Portfolios engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*', 'db/**/*', 'public/**/*']
  s.add_dependency('acts-as-taggable-on')
  s.add_dependency('refinerycms', '~> 1.0.9')
end