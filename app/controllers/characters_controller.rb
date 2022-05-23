class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :update, :destroy]

  # GET /characters
  def index
    @characters = Character.find(params[:user_id])

    render json: @characters
  end

  # GET /characters/1
  def show
    render json: @character
  end

  # POST /characters
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    # if @character.update(character_params)
    #   render json: @character
    # else
    #   render json: @character.errors, status: :unprocessable_entity
    # end
    character = Character.find(params[:user_id])
    character.update(character_params)
    render json: @character
  end

  # DELETE /characters/1
  def destroy
    @character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:nick, :klan, :profesja, :umiejetnosci, :przedmioty, :p_fab,:staty, :statystyki => [:sila, :zrecznosc])
    end
end
