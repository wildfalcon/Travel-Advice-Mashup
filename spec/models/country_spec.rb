require 'spec_helper'

describe Country do
  describe "Validations" do
    let(:country){ Factory(:country)}
    
    it "should have a valid factory" do
      country.should be_valid
    end
  end
  
  describe "Locating its outline" do
    let(:country){ Factory(:country, :name => "Aruba")}
    before(:each) do 
      @outline = Factory(:outline, :name => "Aruba")
    end
    
    it "should be able to locate an outline with the same name" do
      country.outline.should == @outline
    end
    
    it "should save the assocation to the outline" do
      country.outline
      country.reload
      country.outline_id.should == @outline_id
    end
  end
end
