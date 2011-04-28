class Country < ActiveRecord::Base

  belongs_to :outline
  serialize :polygons
  after_create :associate_outline

  scope :with_advice, where('travel_advice is not null')

  def no_travel_all?
    self.travel_advice == "noTravelAll" ? true : false
  end
  
  protected
 
  def associate_outline
    self.outline = Outline.find_by_name(self.name)
  end
 
end


