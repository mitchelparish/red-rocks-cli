# require 'pry'
# require 'nokogiri'
# require 'open-uri'

class RedRocks::Scraper

  def self.scrape_concerts
    doc = Nokogiri::HTML(open("https://www.redrocksonline.com/events/category/Concerts"))

    doc.css("div.entry.event-icons.clearfix").each do |concert|
      name = concert.css("h3").text
      opener = concert.css("h4").text

      binding.pry

      #
      # RedRocks::Concert.new(name, opener, date, time, doors, tickets_URL)
    end
  end
end
