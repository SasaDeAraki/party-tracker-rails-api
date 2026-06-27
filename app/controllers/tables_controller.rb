class TablesController < ApplicationController
  def index
    set_player

    render json: @player.tables.distinct
  end

  private

  def set_player
    @player = Player.find(params[:player_id])
  end
end
