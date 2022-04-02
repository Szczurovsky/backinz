class Api::V1::NorgmarsController < ApplicationController
  before_action :set_norgmar, only: [:show, :update, :destroy]

  # GET /norgmars
  def index
    @norgmars = Norgmar.all
    @norgmar = Norgmar.where(id:1)
    render json: @norgmars
  end

  # GET /norgmars/1
  def show
    render json: @norgmar
  end

  # POST /norgmars
  def create
    @norgmar = Norgmar.new(norgmar_params)

    if @norgmar.save
      render json: @norgmar, status: :created, location: @norgmar
    else
      render json: @norgmar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /norgmars/1
  def update
    if @norgmar.update(norgmar_params)
      render json: @norgmar
    else
      render json: @norgmar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /norgmars/1
  def destroy
    @norgmar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_norgmar
      @norgmar = Norgmar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def norgmar_params
      params.require(:norgmar).permit(:nazwa, :pid, :nid, :opis)
    end
end
