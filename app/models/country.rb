class Country < ActiveRecord::Base

  belongs_to :outline
  serialize :polygons

  scope :with_advice, where('travel_advice is not null')


  def outline_with_memorisation
    if self.outline_id.present?
      outline_without_memorisation
    else
      o = Outline.find_by_name(self.name)
      self.outline = o if o.present?
      self.save
      o
    end
  end
  alias_method_chain :outline, :memorisation

end


