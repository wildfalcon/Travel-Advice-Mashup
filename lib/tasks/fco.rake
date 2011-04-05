require 'open-uri'

namespace :fco do

  desc "pull in travel advice from the FCO rss feed"
  task :rss => :environment do
    url = "http://www.fco.gov.uk/content/en/rss-outbound/travel-advice/travel-advice-rss"
    puts "Pulling rss from #{url}"

    doc = Nokogiri::XML(open(url))


    doc.search('item').each do |item|
      title  = item.search('title').first.content
      link = item.search('link').first.content
      desc = item.search('description').first.content
      pubTime = item.search('pubDate').first.content.to_time
      travel_advice = item.children.map(&:name).select{|n| n =~ /noTravel/}.first
      advice = travel_advice.present? ? travel_advice : "None"
      
      name = title.split[0..-3].join " "


      
      
      country = Country.find_or_create_by_name(name)
      country.travel_advice = travel_advice
      country.save

    end
  end
end
