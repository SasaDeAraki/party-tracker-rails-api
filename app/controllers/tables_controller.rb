class TablesController < ApplicationController
  def index
    set_player

    render json: @player.tables.all
  end

  private

  def set_player
    @player = Player.find(params[:player_id])
  end
end
