require 'rss'
require 'open-uri'

class WeatherRSS
    def self.weather_rss()
        rss_results = []
        rss = RSS::Parser.parse(URI.open('https://www.dunsink.dias.ie/weatherdata/RSS/weewx_rss.xml').read, false).items[0..5]

        rss.each do |result|

            #result.description = result.description.split(';')
            result.description = result.description.gsub(';', '<br/>').html_safe 

           puts result.description

            result = { title: result.title, date: result.pubDate, link: result.link, description: result.description }
            rss_results.push(result)
            #puts rss_results
        end
        return rss_results
    end
end