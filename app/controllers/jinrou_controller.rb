class JinrouController < ApplicationController
  def index
    day_num = Day.this_day
    @day = Day.new(day_num: day_num)
    @day.save!
    @players = Player.all
    @days = Day.all
  end
end
