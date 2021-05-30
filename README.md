# HackerWeather

This gem is a shortcut to get weather temperature for your city without leaving your most favorite place - terminal.
For now, it supports only Canadian cities.

## Installation


```
$ gem install hacker_weather
```

## Usage

```
hw <province> <city>
```
Example: 
```
$ hw ontario ottawa
Fetching placecode for the given city and province
Placecode corresponding to ontario/ottawa is caon0512
Fetching temperature
Temperature for ontario/ottawa is 17 degrees Celsius

This program is for learning purposes and the data is pulled from https://www.theweathernetwork.com/ca/weather/ontario/ottawa
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gmammadova/hacker_weather.
