class Api::CharactersController < ApplicationController
  before_action :set_character, only: %i[ show update destroy ]

  # GET /api/characters
  def index
    @characters = Character.order(sort_order: :asc)
    render json: @characters
  end

  #POST /api/characters
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: created
    else
      render json: { errors: @character.errors }, status: unprocessable_content
    end
  end

  #GET /api/characters/:id
  def show
    render json: @character
  end

  #PATCH  /api/characters/:id
  def update
    if @character.update(character_params)
      render json: @character, status: updated
    else
      render json: { errors: @character.errors }, status: unprocessable_content
    end
  end

  #DELETE /api/characters/:id
  def destroy
    @character.destroy!
    head :no_content
  end

  private

  def set_character
    @character = Character.find(params.expect([:id]))
  end

  def character_params
    params.expect()
  end
end
