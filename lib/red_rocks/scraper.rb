require 'pry' #remove before submission.
require 'nokogiri' #remove before submission, already required in environment.
require 'open-uri' #remove before submission, already required in environment.

# class RedRocks::Scraper - revert back before submission.
class Scraper

  def self.scrape
    doc = Nokogiri::HTML(open("https://www.redrocksonline.com/events/category/Concerts"))

    doc.css("div.entry.event-icons.clearfix").each do |concert|
      name = concert.css("h3").text
      opener = concert.css("h4").text
      date = concert.css("span.m-date-value.m-value").text
      time = concert.css("span.m-doors").text.gsub("Doors","").strip
      tickets_URL = concert.css("div.buttons a").attr("href").text
      #RedRocks::Concert.new(name, opener, date, time, tickets_URL)
      #binding.pry #remove before submission.
    end
  end
end

Scraper.scrape #remove before submission.
