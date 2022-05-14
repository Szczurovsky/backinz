class Api::V3::KlansController < ApplicationController
  before_action :set_klan, only: [:show, :update, :destroy]

  # GET /klans
  def index
    @klans = Klan.all

    render json: @klans
  end

  # GET /klans/1
  def show
    render json: @klan
  end

  # POST /klans
  def create
    @klan = Klan.new(klan_params)

    if @klan.save
      render json: @klan, status: :created, location: @klan
    else
      render json: @klan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /klans/1
  def update
    if @klan.update(klan_params)
      render json: @klan
    else
      render json: @klan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /klans/1
  def destroy
    @klan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klan
      @klan = Klan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def klan_params
      params.require(:klan).permit(:nazwa, :jarl, :nastepca, :stolica, :polozenie, :opis, :show, :index)
    end
end
