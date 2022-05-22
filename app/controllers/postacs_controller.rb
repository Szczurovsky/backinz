class PostacsController < ApplicationController
  before_action :set_postac, only: [:show, :update, :destroy]

  # GET /postacs
  def index
    @postacs = Postac.all

    render json: @postacs
  end

  # GET /postacs/1
  def show
    render json: @postac
  end

  # POST /postacs
  def create
    @postac = Postac.new(postac_params)

    if @postac.save
      render json: @postac, status: :created, location: @postac
    else
      render json: @postac.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /postacs/1
  def update
    if @postac.update(postac_params)
      render json: @postac
    else
      render json: @postac.errors, status: :unprocessable_entity
    end
  end

  # DELETE /postacs/1
  def destroy
    @postac.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postac
      @postac = Postac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postac_params
      params.require(:postac).permit(:imie, :statystyki, :klan, :profesja, :umiejetnosci, :przedmioty, :p_fab)
    end
end
