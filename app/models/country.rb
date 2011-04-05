class Country < ActiveRecord::Base

  scope :with_advice, where('travel_advice is not null')

end
