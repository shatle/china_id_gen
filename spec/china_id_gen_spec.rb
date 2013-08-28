require 'spec_helper'

describe ChinaIdGen do 
  
  it "shoud be right" do 
    expect(ChinaIdGen.gen("45072119871011811")).to eq("9")
  end 

end
