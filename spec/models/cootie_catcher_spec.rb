require File.dirname(__FILE__) + "/../" + "/spec_helper.rb"

describe "Cootie Catcher" do

  before do
    @cootie_catcher_game = mock_model(CootieCatcher)
  end


  describe "Game Setup" do

    it "computer has a color generator" do
     @cootie_catcher_game.color_generator.should == []
    end



    it "Player pick 4 colors" do
       pending
       @mode = "2-Player"
       @cootie_catcher_game.my_colors.count.should == 4
     end

  end
end