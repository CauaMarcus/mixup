class Api::GamesController < ApplicationController

  #GET /api/games
  def index
    @games = Game.all
    render json: @games
  end

  #POST /api/games
  def create
  end

  #GET /api/games/:id
  def show
  end

  #PATCH  /api/games/:id
  def update
  end

  #DELETE /api/games/:id
  def destroy
  end
end
