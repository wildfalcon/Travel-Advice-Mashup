require 'spec_helper'

describe Outline do
  describe "Validations" do
    let(:outline){ Factory(:outline) }
    
    it "should have a valid factory" do
      outline.should be_valid
    end

    it "should be invalid without any polygons" do
      outline.polygons = nil
      outline.should_not be_valid
    end
  end
  
  it "should load with polygons correctly" do
    o = Factory.create(:outline)
    outline = Outline.first
    outline.polygons.should == o.polygons
    
  end
end
