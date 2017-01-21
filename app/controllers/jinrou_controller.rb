class JinrouController < ApplicationController
  def home
    @players = Player.all
    @days = Day.all
  end
end
