require 'pry'
require 'nokogiri'
require 'open-uri'

# class RedRocks::Scraper
class Scraper

  def self.scrape_concerts
    doc = Nokogiri::HTML(open("https://www.redrocksonline.com/events/category/Concerts"))

    binding.pry

    doc.css("div.entry.event-icons.clearfix").each do |concert|
      name = concert.css("h3").text
      opener = concert.css("h4").text
      date = concert.css("span.m-date-value.m-value").text
      time = concert.css("span.m-doors").text.gsub("Doors","").strip
      tickets_URL = concert.css("div.buttons a").map { |link| link['href'] }


      # RedRocks::Concert.new(name, opener, date, time, tickets_URL)
    end



  end
end

Scraper.scrape_concerts
