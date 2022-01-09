# FlagIcon
[![Gem Version](https://badge.fury.io/rb/flag_icon.svg)](https://badge.fury.io/rb/flag_icon)

### Purpose
An attempt to map languages to flags!

### Approach
Matching flags to languages can be really tricky and even problematic sometimes because there is no direct association
between languages and countries since the same language is spoken in many countries and many languages are spoken in a single.
So a effort was made to identify the official language of each country and then assign the flag to the language not the country.

So for a title from Mexico which has spanish as the official language the spanish flag will appear.

Therefore if you notice any flags being mismatched please raise an [issue](https://github.com/alexwebgr/flag_icon/issues)
or even better open a [pull request](https://github.com/alexwebgr/flag_icon/pulls)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flag_icon'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install flag_icon

## Usage
There is a number of helpers available that will render country names, language names and flags given a country code or locale.

```ruby
# It returns HTML element with country icon and title
#
# @param code -> language locale
# @example language_icon('el')
# @return String
language_icon
```
```ruby
# It returns HTML element with country icon
#
# @param code -> country iso code
# @example county_icon('gr')
# @return String
county_icon
```
```ruby
# It returns the language name
#
# @param code -> language locale
# @example language_name('el') # => Greek
# @return String
language_name
```
```ruby
# It returns the country name
#
# @param code -> country iso code
# @example language_name('gr') # => Greece
# @return String
country_name
```
```ruby
# It returns the country iso code
#
# @param code -> language locale
# @example language_name('el') # => gr
# @return String
language_flag
```
```ruby
# It returns the country iso code
#
# @param popular -> title of the popular group
# @param available -> title of the available group
# @example select_language
# @return Hash
select_language
```
```ruby
# Define in your application_helper to override the popular languages
# Default: [['English', :en], ['Spanish', :es]]
#
# @example
#   def popular_languages
#     [['English', :en], ['Spanish', :es]]
#   end
# @return Array
popular_languages
```
```ruby
# Define in your application_helper to override the available languages
# @example [['English', :en], ['Spanish', :es]] #default
# @example
#   def available_languages
#     Language.all.order(:language_locale).pluck(:language_locale)
#   end
# @return Array
available_languages

```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/alexwebgr/flag_icon/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FlagIcon project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/alexwebgr/flag_icon/blob/master/CODE_OF_CONDUCT.md).

## Credits
* Flag icons and css from [flag-icons](https://github.com/lipis/flag-icons)
* Country names [xqisocodes.html](https://docs.oracle.com/cd/E13214_01/wli/docs92/xref/xqisocodes.html)
* Language to country mapping [country_locale_map.json](https://github.com/riboseinc/country_to_locales_mapping/blob/master/data/country_locale_map.json)
* Language to country mapping [language-identifiers.html](http://www.i18nguy.com/unicode/language-identifiers.html)

