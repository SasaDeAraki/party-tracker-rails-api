class PlayersController < ApplicationController
  def index
    players = Player.all

    render json: players
  end

  def show
    set_player

    render json: @player
  end

  def create
    player = Player.new(player_params)

    if player.save
      render json: player, status: :created, location: player
    else
      render json: player.errors, status: :unprocessable_entity
    end
  end

  private

  def set_player
    @player = Player.find(params.extract_value(:id))
  end

  def player_params
    params.expect(player: [ :name ])
  end
end
