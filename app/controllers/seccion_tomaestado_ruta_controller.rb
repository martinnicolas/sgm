class SeccionTomaestadoRutaController < ApplicationController
  before_action :set_seccion_tomaestado_rutum, only: [:show, :edit, :update, :destroy]

  # GET /seccion_tomaestado_ruta
  # GET /seccion_tomaestado_ruta.json
  def index
    @seccion_tomaestado_ruta = SeccionTomaestadoRutum.all
  end

  # GET /seccion_tomaestado_ruta/1
  # GET /seccion_tomaestado_ruta/1.json
  def show
  end

  # GET /seccion_tomaestado_ruta/new
  def new
    @seccion_tomaestado_rutum = SeccionTomaestadoRutum.new
  end

  # GET /seccion_tomaestado_ruta/1/edit
  def edit
  end

  # POST /seccion_tomaestado_ruta
  # POST /seccion_tomaestado_ruta.json
  def create
    @seccion_tomaestado_rutum = SeccionTomaestadoRutum.new(seccion_tomaestado_rutum_params)

    respond_to do |format|
      if @seccion_tomaestado_rutum.save
        format.html { redirect_to @seccion_tomaestado_rutum, notice: 'Seccion tomaestado rutum was successfully created.' }
        format.json { render :show, status: :created, location: @seccion_tomaestado_rutum }
      else
        format.html { render :new }
        format.json { render json: @seccion_tomaestado_rutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seccion_tomaestado_ruta/1
  # PATCH/PUT /seccion_tomaestado_ruta/1.json
  def update
    respond_to do |format|
      if @seccion_tomaestado_rutum.update(seccion_tomaestado_rutum_params)
        format.html { redirect_to @seccion_tomaestado_rutum, notice: 'Seccion tomaestado rutum was successfully updated.' }
        format.json { render :show, status: :ok, location: @seccion_tomaestado_rutum }
      else
        format.html { render :edit }
        format.json { render json: @seccion_tomaestado_rutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seccion_tomaestado_ruta/1
  # DELETE /seccion_tomaestado_ruta/1.json
  def destroy
    @seccion_tomaestado_rutum.destroy
    respond_to do |format|
      format.html { redirect_to seccion_tomaestado_ruta_url, notice: 'Seccion tomaestado rutum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seccion_tomaestado_rutum
      @seccion_tomaestado_rutum = SeccionTomaestadoRutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seccion_tomaestado_rutum_params
      params.require(:seccion_tomaestado_rutum).permit(:seccion_id, :tomaestado_id, :rutum_id, :fecha_inicio, :fecha_fin)
    end
end
