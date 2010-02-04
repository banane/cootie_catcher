require File.dirname(__FILE__) + "/../" + "/spec_helper.rb"

describe Fortune do

  it "lets offers a sample set of fortunes" do
    sample = ["You will be a scientist.","Your cat's breath smells like catfood","Learn from eskimos.","Don't do it.", "Your mother rocks.", "You will become the President of the United States. Study up!", "There will be a mighty wind.", "On the 8th Day of the 8th Year it will rain."]
    sample_fortune_set = Game.find(:fortune_type => sample)
    sample_forutne_set.should == sample
    
  end
  
  it " create fortunes" do
      new_fortune = "My dogs breath smells like dog food."
      Fortune.add(:fortune => new_fortune)
      getitback = Fortune.find(:fortune => new_fortune)
      getitback.should == new_fortune
  end

end