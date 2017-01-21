class JinrouController < ApplicationController
  def index
    @players = Player.all
    @days = Day.all
  end
end
