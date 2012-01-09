# Guard::Jammit [![Build Status](https://secure.travis-ci.org/netzpirat/guard-jammit.png)](http://travis-ci.org/netzpirat/guard-jammit)

Guard::Jammit watches your assets to automatically package them using [Jammit](http://documentcloud.github.com/jammit/).

Tested on MRI Ruby 1.8.7, 1.9.2, 1.9.3, REE and the latest versions of JRuby and Rubinius.

If you have any questions please join us on our [Google group](http://groups.google.com/group/guard-dev) or on `#guard`
(irc.freenode.net).

## Install

### Guard and Guard::Jammit

The simplest way to install Guard is to use [Bundler](http://gembundler.com/).
Please make sure to have [Guard][] installed.

Add Guard::Jammit to your `Gemfile`:

```ruby
group :development, :test do
  gem 'guard-jammit'
end
```

Add the default Guard::Jammit template to your `Guardfile` by running:

```bash
$ guard init jammit
```

## Usage

Please read the [Guard usage documentation](https://github.com/guard/guard#readme).

## Guardfile

Guard::Jammit can be adapted to all kind of projects. Please read the
[Guard documentation](https://github.com/guard/guard#readme) for more information about the Guardfile DSL.

```ruby
guard :jammit do
  watch(%r{^public/javascripts/(.*)\.js$})
  watch(%r{^public/stylesheets/(.*)\.css$})
end
```

## Options

There are many options that can customize Guard::Jammit to your needs. Options are simply supplied as hash when
defining the Guard in your `Guardfile`:

```ruby
guard :jammit, :package_on_start => true, :notifications => :false do
  ...
end
```

### General options

The general options configures the environment that is needed to run Guard::Jammit:

```ruby
:config_path => 'assets.yml'                  # YAML configuration file to use for Jammit
                                              # default: 'config/assets.yml'

:output_folder => ''                          # Overwrite to configured output folder
                                              # default: nil

:base_url => 'http://www.site.com'            # Base URL for building the MHTML stylesheets
                                              # default: nil

:public_root => 'htdocs'                      # Overwrite to configured public root
                                              # default: nil

:force => true                                # Force package generation.
                                              # default: false

:package_names => [:admin, :deps]             # The package names to package.
                                              # default: nil
```

### Workflow options

The workflow options define how Guard::Jammit behaves on Guard states.

```ruby
:package_on_start => true                     # Initial package when Guard starts
                                              # default: false
```

### System notifications options

These options affects what system notifications (growl, libnotify or notifu) are shown after a spec run:

```ruby
:notifications => false                       # Show success and error notifications.
                                              # default: true

:hide_success => true                         # Disable successful package run notification.
                                              # default: false
```

## Issues

You can report issues and feature requests to [GitHub Issues](https://github.com/netzpirat/guard-jammit/issues). Try to figure out
where the issue belongs to: Is it an issue with Guard itself or with Guard::Jammit? Please don't
ask question in the issue tracker, instead join us in our [Google group](http://groups.google.com/group/guard-dev) or on
`#guard` (irc.freenode.net).

When you file an issue, please try to follow to these simple rules if applicable:

* Make sure you run Guard with `bundle exec` first.
* Add debug information to the issue by running Guard with the `--verbose` option.
* Add your `Guardfile` and `Gemfile` to the issue.
* Make sure that the issue is reproducible with your description.

## Development

- Documentation hosted at [RubyDoc](http://rubydoc.info/github/guard/guard-jammit/master/frames).
- Source hosted at [GitHub](https://github.com/netzpirat/guard-jammit).

Pull requests are very welcome! Please try to follow these simple rules if applicable:

* Please create a topic branch for every separate change you make.
* Make sure your patches are well tested.
* Update the [Yard](http://yardoc.org/) documentation.
* Update the README.
* Please **do not change** the version number.

For questions please join us in our [Google group](http://groups.google.com/group/guard-dev) or on
`#guard` (irc.freenode.net).

## Contributors

* [John Bintz](https://github.com/johnbintz)

## License

(The MIT License)

Copyright (c) 2009-2012 Pelle Braendgaard, Michael Kessler

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
