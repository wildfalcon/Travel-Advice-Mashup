class CountriesController < ApplicationController
  def index

    @countries = Country.with_advice
        @outlines = @countries.map(&:outline).compact
  end

end
