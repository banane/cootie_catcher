require 'spec_helper'

describe GameController do

  before do
      @game = Game.new(:name => "Test Game", :creator => "Bobbie Sue", :fortune_set_type => "Sample", :color_set_type => "Sample")
  end  

  describe "sets options" do
    it " status is creation" do
      status = "creation"
      @game.save
      @game.status.should == status
    end       
    it "asks the user the color options" 
    it "asks the user fortune options" 
    it "sets game status to play when user is done"
  end

  describe "color set " do  

    it " selects random 4 colors " do
      @game.color_set_type = 'Random'
      @game.save
      @game.color_set.length.should == 4     
    end
    
    it " lets the user select 4 colors" do
      pending
      user_choice_color_set =  ["red","green","violet","puce"]
      @game.color_set_type = "Pick your own"
      @game.color_set = ["red","chartreuse","violet","puce"]
      @game.color_set.length.should == user_choice_color_set
    end
    
    it " lets the user select a sample color set " do
      @game.color_set_type = "Sample"
      @game.save
      @game2 = Game.find(:all, :conditions=>{:name => "Test Game"})
      @game2.color_set.should == Color.find_sample

    end 
  end

  describe "fortune set creation" do
    it "asks if the user wants to create their own manually"
    it "creates an array of 8 fortunes randomly"    
    it "lets users select from a set of fortunes" 
    it "randomly assigns fortunes to numbers 1-8"
  end


  describe "game play behavior" do

    it "asks the player for a first color "
    it "loops through the open/close state for the length of the color chosen" 
    it "remembers the final state of the first stage"
    it "lets the player select a number of the last state" 
    it "loops through the open/close state the number of times that the player chose in stage 2 " 
    it "remembers the final state of the second stage's result" 
    it "lets the player select a number from the 2nd stage state"
    it "shows the player the associate fortune of the result of the 3rd stage" 
  end


end
