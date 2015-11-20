class RutaMedidorsController < ApplicationController
  before_action :set_ruta_medidor, only: [:show, :edit, :update, :destroy]

  # GET /ruta_medidors
  # GET /ruta_medidors.json
  def index
    @ruta_medidors = RutaMedidor.all
  end

  # GET /ruta_medidors/1
  # GET /ruta_medidors/1.json
  def show
  end

  # GET /ruta_medidors/new
  def new
    @ruta_medidor = RutaMedidor.new
  end

  # GET /ruta_medidors/1/edit
  def edit
  end

  # POST /ruta_medidors
  # POST /ruta_medidors.json
  def create
    @ruta_medidor = RutaMedidor.new(ruta_medidor_params)

    respond_to do |format|
      if @ruta_medidor.save
        format.html { redirect_to @ruta_medidor, notice: 'Ruta medidor was successfully created.' }
        format.json { render :show, status: :created, location: @ruta_medidor }
      else
        format.html { render :new }
        format.json { render json: @ruta_medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruta_medidors/1
  # PATCH/PUT /ruta_medidors/1.json
  def update
    respond_to do |format|
      if @ruta_medidor.update(ruta_medidor_params)
        format.html { redirect_to @ruta_medidor, notice: 'Ruta medidor was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruta_medidor }
      else
        format.html { render :edit }
        format.json { render json: @ruta_medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruta_medidors/1
  # DELETE /ruta_medidors/1.json
  def destroy
    @ruta_medidor.destroy
    respond_to do |format|
      format.html { redirect_to ruta_medidors_url, notice: 'Ruta medidor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruta_medidor
      @ruta_medidor = RutaMedidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruta_medidor_params
      params.require(:ruta_medidor).permit(:rutum_id, :medidor_id)
    end
end
