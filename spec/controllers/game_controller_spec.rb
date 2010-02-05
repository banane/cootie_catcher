require 'spec_helper'

describe GameController do
integrate_views

  it "asks user to pick 1 of 4 colors" do
    # display colors
    get "index"
    response.should have_tag "select"
    response.should have_tag "option", :text => "red"

  end
  
  it "iterates through the letters of the color" do
  end
  
  it "saves the final state" do
  end
  
  it "asks you numbers from the final state" do
    
  end
  
  it "iterates through the given number" do
    
  end
  
  it "remembers the final state" do
    
  end
  
  it "asks you for a number of the ones offered" do
    
  end
  
  it "reveals the corresponding fortune" do
    
  end
end
