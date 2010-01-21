class CootieCatcher < ActiveRecord::Base

  def color_generator
    colors = Color.find(:all)
    colors.sort_by { rand }
    colors[0..3]
  end
end
