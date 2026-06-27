class CharactersController < ApplicationController
  def index
    set_player

    render json: @player.characters
  end

  def show
    set_player

    render json: @player.characters.find(params.extract_value(:id))
  end

  private

  def set_player
    @player = Player.find(params[:player_id])
  end
end
