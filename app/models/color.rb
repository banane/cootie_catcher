class Color < ActiveRecord::Base
 BASE_COLORS = ["rojo","azul","verde","amarillo","violeta","anaranjado","marron"]
 SAMPLE_GAME_COLORS = ["red","blue","green","yellow"]

  def basic_colors
    Color::BASE_COLORS.sort_by { rand }[0..3]
  end  

end
