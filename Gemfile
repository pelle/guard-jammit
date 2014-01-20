source "https://rubygems.org"

gemspec

unless ENV['TRAVIS']
  gem 'redcarpet'
  gem 'yard'
end

platforms :rbx do
  gem 'racc'
  gem 'rubysl', '~> 2.0'
  gem 'psych'
  gem 'json'
end