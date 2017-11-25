# SystemTimeFormat ruby gem

This gem allows to give windows system date time to ruby date time format.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'system_time_format'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install system_time_format

## SuperReceptionist exposes the following function:
  * FullDateTimePattern
  * LongDatePattern
  * LongTimePattern
  * MonthDayPattern
  * ShortDatePattern
  * ShortTimePattern
  * SortableDateTimePattern
  * UniversalSortableDateTimePattern
  * YearMonthPattern

## Usage
```ruby
# To get FullDateTimePattern
SystemTimeFormat.get_full_date_time_pattern

# To get LongDatePattern
SystemTimeFormat.get_long_date_pattern

# To get LongTimePattern
SystemTimeFormat.get_long_time_pattern

# To get MonthDayPattern
SystemTimeFormat.get_month_day_pattern

# To get ShortDatePattern
SystemTimeFormat.get_short_date_pattern

# To get ShortTimePattern
SystemTimeFormat.get_short_time_pattern

# To get SortableDateTimePattern
SystemTimeFormat.get_sortable_date_time_pattern

# To get UniversalSortableDateTimePattern
SystemTimeFormat.get_universal_sortable_date_time_pattern

# To get YearMonthPattern
SystemTimeFormat.get_year_month_pattern
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/harikesh-kolekar/system_time_format. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

