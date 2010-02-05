class GameController < ApplicationController
STATUS = ["creation", "play"]

  def index
  end


  def new
    @game = Game.create(params[:game])
    respond_to do |format|
      format.html
      format.xml
    end


  end

end

