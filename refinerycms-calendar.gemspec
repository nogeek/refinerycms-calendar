Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-calendars'
  s.version           = '1.2.0'
  s.description       = 'Ruby on Rails Events engine for Refinery CMS'
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = 'Events engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['**/*']
  s.authors           = ["Neoteric Design", "Joe Sak", "Philip Arndt"]
  s.email             = %q{joe@neotericdesign.com}
  s.homepage          = "https://github.com/nogeek/refinerycms-calendar"

  s.add_dependency    'refinerycms-core',  '>= 0.9.9.1'
end


