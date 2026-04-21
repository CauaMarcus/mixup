class Api::CharacterInfosController < ApplicationController
  before_action :set_character_info

  def index
    @character_infos = CharacterInfo.all
  end

  def create
    @character_info = CharacterInfo.new(character_info_params)

    if @character_info.save
      render json: @character_info, status: created
    else
      render json: { errors: @character_info.errors }, status: unprocessable_content
    end
  end

  def show
    render json: @character_info
  end

  def update
  end

  def destroy
  end

  private

  def set_character_info
    @character_info = CharacterInfo.find(params.expect([:id]))
  end

  def character_info_params
    params.expect()
  end
end
