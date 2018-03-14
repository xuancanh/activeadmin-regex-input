# FORMTASTIC REGEX INPUT

## Description

A simple filter input for active admin with checking at client if input match predefined regex.

![Demo Gif](http://g.recordit.co/ReSXY68Lhb.gif)

## Dependency

* activeadmin 1.0.0 pre
* rails-assets-webui-popover (Require manual install)
* jquery-rails 3.1

## Installation

Add following lines to the Gemfile:

```ruby
gem 'rails-assets-webui-popover', source: 'https://rails-assets.org'
gem 'activeadmin-regex-input', '~> 0.1'
```

Then execute `bundle` to install to your activeadmin project.


## Usage
In the index section of activeadmin controller:
```ruby
filter :sample_regex,
         as: :regex,
         regex: ']d+',
         example: '123'
```

The regex option is the string representation of the regex. This must compatible with javascript default regex engine.
