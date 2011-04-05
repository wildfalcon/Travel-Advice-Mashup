class Country < ActiveRecord::Base

  serialize :polygons

  scope :with_advice, where('travel_advice is not null')

end
