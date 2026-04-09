class Api::DevelopersController < ApplicationController
  before_action :set_developer, only: %i[ show update destroy ]

  # GET /api/developers
  def index
    @developers = Developer.all
    render json: @developers
  end

  # POST /api/developers
  def create
    @developer = Developer.new(developer_params)

    if @developer.save
      render json: @developer, status: :created
    else
      render json: { errors: @developer.errors }, status: :unprocessable_content
    end
  end

  # GET /api/developers/:id
  def show
    render json: @developer
  end

  # PATCH /api/developers/:id
  def update
    if @developer.update(developer_params)
      render json: @developer
    else
      render json: { errors: @developer.errors }, status: :unprocessable_content
    end
  end

  # DELETE /api/developers/:id
  def destroy
    @developer.destroy!
  end

  private
    def set_developer
      @developer = Developer.find(params.expect(:id))
    end

    def developer_params
      params.expect(:name, :slug, :founded, :logo_url, :description)
    end
end
