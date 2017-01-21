class JinrouController < ApplicationController
  def index
    @before_day = (params[:this_day].to_s).to_i
    @this_day = @before_day + 1
    @day = Day.new(day_num: @this_day)
    @day.save!
    @players = Player.all
    @days = Day.all
    @living_players = Player.where(is_living: 0)
    @opened_prayers = @living_players.where(opened_role: "占い師")
    @opened_mystics = @living_players.where(opened_role: "霊媒師")
    @opened_knights = @living_players.where(opened_role: "騎士")
  end
end
