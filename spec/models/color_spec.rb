require File.expand_path(File.dirname(__FILE__) + "../../spec_helper.rb")

describe Color do
  it "has at least 7 colors" do
    Color::BASE_COLORS.length.should == 7
  end

  describe "basic colors" do
    it "should return 4 colors" do
      our_colors = ["marron","azul","anaranjado","amarillo"].sort

      mocked_colors = mock(Color)
      mocked_colors.should_receive(:basic_colors).with(no_args()).and_return(our_colors)
      mocked_colors.basic_colors

      # other test i wrote
      # sample = Color.find(:all, :conditions => {:is_sample_color => "yes"} )
      # @game.find_sample.should == sample
      # @game.find_sample.length.should == 4
      # @game.find_sample.include("red").should_be true
      # @game.find_sample.include("blue").should_be true

    end
    it "should be a random set from the base colors" do
      # that there are 4
      generated_rand_colors.length.should == 4

      #this color is in the base colors array
      generated_rand_colors.each  do |c|
        base_colors.include?(c).should_be true
      end

    end
    
   it " lets the user add colors " do
      new_color = "chartreuse"
      Color.add(:name => new_color)
      select_new_color = Color.find(:name => new_color)
      select_new_color.should_not be_missing
    end

  end
end

