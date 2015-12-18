class RutaController < ApplicationController
  before_action :set_rutum, only: [:show, :edit, :update, :destroy]

  # GET /ruta
  # GET /ruta.json
  def index
    @ruta = Rutum.all
  end

  def store_route     
    session[:ruta] = params[:ruta]
    render :nothing => true
  end

  # GET /ruta/1
  # GET /ruta/1.json
  def show
    @medidor_ids = RutaMedidor.where(:rutum_id => params[:id]).ids
    @medidores = Medidor.find(@medidor_ids)
    
    @geojson = Array.new
    @medidores.each do |medidor|
      @geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [medidor.longitud, medidor.latitud]
        },
        properties: {
          title: medidor.nombre,
          description: Cliente.find(medidor.cliente_id).domicilio,
          name: medidor.nombre,
          address: Cliente.find(medidor.cliente_id).domicilio,
          :'marker-color' => '#00607d',
          :'marker-symbol' => 'polling-place',
          :'marker-size' => 'medium'
        }
      }
    end
  end

  # GET /ruta/new
  def new
    @rutum = Rutum.new
  end

  # GET /ruta/1/edit
  def edit
  end

  # POST /ruta
  # POST /ruta.json
  def create

    rutum_params[:ruta] = session[:ruta]    
    debugger
    @rutum = Rutum.new(rutum_params)
    
    respond_to do |format|
      if @rutum.save
        format.html { redirect_to @rutum, notice: 'Se ha creado una nueva Ruta.' }
        format.json { render :show, status: :created, location: @rutum }
      else
        format.html { render :new }
        format.json { render json: @rutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruta/1
  # PATCH/PUT /ruta/1.json
  def update
    respond_to do |format|
      if @rutum.update(rutum_params)
        format.html { redirect_to @rutum, notice: 'Se ha actualizado la Ruta.' }
        format.json { render :show, status: :ok, location: @rutum }
      else
        format.html { render :edit }
        format.json { render json: @rutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruta/1
  # DELETE /ruta/1.json
  def destroy
    @rutum.destroy
    respond_to do |format|
      format.html { redirect_to ruta_url, notice: 'Se ha eliminado la Ruta.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rutum
      @rutum = Rutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rutum_params
      params.require(:rutum).permit(:nombre)
    end
end
