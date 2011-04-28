class Outline < ActiveRecord::Base
  
  has_one :country

  validates_presence_of :polygons
  
  serialize :polygons
end
