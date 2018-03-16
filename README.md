# Ativeadmin Regex Filter Input

## Description

A simple filter input for active admin with checking at client if input match predefined regex.

![Demo Gif](http://g.recordit.co/ReSXY68Lhb.gif)

## Dependency

* activeadmin 1.0.0 pre

## Installation

Add following lines to the Gemfile:

```ruby
gem 'activeadmin-regex-input', '~> 0.1'
```

Then execute `bundle` to install to your activeadmin project.

## Usage
In the index section of activeadmin controller:
```ruby
filter :sample_regex,
         as: :regex,
         regex: '/d+',
         example: '123'
```

The regex option is the string representation of the regex. This must compatible with javascript default regex engine. Currently the server side validation isn't included.

## Thanks

Thank sandywalker for beautiful jquery popover library [webui-popover](https://github.com/sandywalker/webui-popover).