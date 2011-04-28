module ContriesHelper

  def country_classes(country)
    classes = []
    classes << "no_travel_all" if country.no_travel_all?
    classes.join(", ")
  end
end
