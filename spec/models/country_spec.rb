require 'spec_helper'

describe Country do
  describe "Validations" do
    let(:country){ Factory(:country)}
    
    it "should have a valid factory" do
      country.should be_valid
    end
  end
end
