# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require 'json'
require_relative "hacker_weather/version"

module HackerWeather

  def self.get_weather
    province = ARGV[0]
    city = ARGV[1]

    if province == nil || city == nil
      puts "The program requires province and city name. For example: hw ontario ottawa"
      exit
    end

    url = "https://www.theweathernetwork.com/ca/weather/#{province}/#{city}"

    puts "Fetching placecode for the given city and province"

    response_body = URI.open(url).read

    # parsing HTML response_body
    document = Nokogiri::HTML(response_body)
    script_tags = document.search("script")
    script_tag_with_placecode = script_tags.find { |script_tag| script_tag.text.match(/var _config/) }
    parsed_script_content = script_tag_with_placecode.text.match(/\"placecode\":\"([a-z0-9]+)\"/)
    placecode = parsed_script_content[1]

    puts "Placecode corresponding to #{province}/#{city} is #{placecode}"

    puts "Fetching temperature"
    url_temperature = "https://weatherapi.pelmorex.com/api/v1/observation/placecode/#{placecode}"
    response_body_temperature = URI.open(url_temperature).read

    parsed_body = JSON.parse(response_body_temperature)
    temperature = parsed_body["observation"]["temperature"]

    puts "Temperature for #{province}/#{city} is #{temperature} degrees Celsius"
    puts "\nThis program is for learning purposes and the data is pulled from #{url}"
  end

end
