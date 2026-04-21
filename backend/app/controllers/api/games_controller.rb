class Api::GamesController < ApplicationController
  before_action :set_game, only: %i[show update destroy]

  # GET /api/games
  def index
    @games = Game.order(sort_order: :asc)
    render json: @games
  end

  # POST /api/games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created
    else
      render json: { errors: @game.errors }, status: :unprocessable_content
    end
  end

  # GET /api/games/:id
  def show
  render json: @game
  end

  # PATCH  /api/games/:id
  def update
    if @game.update(game_params)
      render json: @game, status: :ok
    else
      render json: { errors: @game.errors }, status: :unprocessable_content
    end
  end

  # DELETE /api/games/:id
  def destroy
    @game.destroy!
    head :no_content
  end

  private

  def set_game
    @game = Game.find(params.expect([:id]))
  end

  def game_params
    params.expect(game: [:name, :slug, :developer, :notation_type,
    :primary_color, :secondary_color, :tertiary_color,
    :icon_url, :banner_url, :description, :sort_order])
  end
end
