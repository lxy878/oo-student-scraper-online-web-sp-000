require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url)).css("div.student-card")
    # name = doc.css("h4.student-name").text
    # location = doc.css("p.student-location").text
    data = []
    doc.each do |element|
      name = element.css("h4.student-name").text
      location = element.css("p.student-location").text
      new_hash = {
        :name => name,
        :location => location
      }
      data << new_hash
    end
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
