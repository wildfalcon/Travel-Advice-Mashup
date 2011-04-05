class CountriesController < ApplicationController
  def index
    @countries = Country.with_advice
  end

end
