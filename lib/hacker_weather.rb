# frozen_string_literal: true

require_relative "hacker_weather/version"

module HackerWeather
  class Error < StandardError; end

  def self.get_weather
    city = ARGV[0]

    if city == nil
      puts "The program requires city name."
      exit
    end

    puts "Showing the weather for #{city}"
  end
end
