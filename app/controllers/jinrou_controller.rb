class JinrouController < ApplicationController
  def index
    @before_day = (params[:this_day].to_s).to_i
    @this_day = @before_day + 1
    @day = Day.new(day_num: @this_day)
    @day.save!
    @players = Player.all
    @days = Day.all
  end
end
