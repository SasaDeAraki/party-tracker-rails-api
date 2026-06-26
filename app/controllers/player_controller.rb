class PlayerController < ApplicationController
  def index
    players = Player.all

    render json: players
  end

  def show
    set_player

    render json: @player
  end

  private

  def set_player
    @player = Player.find(params.extract_value(:id))
  end
end
