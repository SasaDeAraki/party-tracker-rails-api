class CharactersController < ApplicationController
  def index
    set_player

    render json: Player.find(@player.characters)
  end

  private

  def set_player
    @player = Player.find(params[:player_id])
  end
end
