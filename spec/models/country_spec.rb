require 'spec_helper'

describe Country do

  describe "Validations" do
    let(:country){ Factory(:country)}
    
    it "should have a valid factory" do
      country.should be_valid
    end
  end
  
  describe "Locating its outline" do
    before(:each) do 
      @outline = Factory(:outline, :name => "Aruba")
      @country = Factory(:country, :name => "Aruba")
    end
    
    it "should be able to locate an outline with the same name" do
      @country.outline.should == @outline
    end
    
    it "should save the assocation to the outline" do
      @country.outline
      @country.reload
      @country.outline_id.should == @outline_id
    end
  end
  
  describe ".no_travel_all" do
    let(:country){ Factory(:country)}
    
    
    it "should be true with noTravelAll" do
      country.travel_advice = "noTravelAll"
      country.should be_no_travel_all
    end
    
    it "shout be false with noTravelParts" do
      country.travel_advice = "noTravelParts"
      country.should_not be_no_travel_all
    end
  end
end
