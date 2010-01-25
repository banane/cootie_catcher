require "spec"

describe "My behaviour" do
    before do
    @cootie_catcher_game = CootieCatcher.new
#    def mock_game(stubs={})
#      @cootie_catcher_game = mock_model(CootieCatcher, stubs.reverse_merge!(:color_generator => []))
#    end
  end


  describe "Game Setup" do

    it "computer has a color generator" do
      p @cootie_catcher_game.inspect
      @cootie_catcher_game.color_generator
      @cootie_catcher_game.color_generator.should == []
    end




  end


    
end