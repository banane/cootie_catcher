require File.expand_path(File.dirname(__FILE__) + "../../spec_helper.rb")

describe Color do
  it "has at least 7 colors" do
    Color::BASE_COLORS.length.should == 7
  end

  describe "basic colors" do
#    before do
#      color = Color.new
#    end
    it "should return 4 colors" do
      our_colors = ["marron","azul","anaranjado","amarillo"].sort

      mocked_colors = mock(Color)
      mocked_colors.should_receive(:basic_colors).with(no_args()).and_return(our_colors)
      mocked_colors.basic_colors

#      generated_rand_colors = color.basic_colors
#      single_test_color = generated_rand_colors[0]

    end
    it "should be a random set from the base colors" do
      # that there are 4
      generated_rand_colors.length.should == 4

      #this color is in the base colors array
      generated_rand_colors.each  do |c|
        base_colors.include?(c).should_be true
      end

    end
  end
end

