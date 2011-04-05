require 'rgeo/shapefile'
require 'ruby-debug'

 RGeo::Shapefile::Reader.open('countries.shp') do |file|
   puts "File contains #{file.num_records} records."
   file.each do |record|
     name = record.attributes['NAME']
     puts name
     flat_map = record.geometry.flat_map
     
     polygons = []
     flat_map.each do |pg|
       polygons << pg.as_text.match(/\(\((.*)\)\)/)[1].split(", ").map do |point|
         point.split(" ")
       end
     end
     
     
     puts polygons.inspect

 end
