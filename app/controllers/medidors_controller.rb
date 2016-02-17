require 'json'

class MedidorsController < ApplicationController
  before_action :set_medidor, only: [:show, :edit, :update, :destroy]

  def store_medidor     
    session[:medidor] = params[:medidor]
    render :nothing => true
  end

  # GET /medidors
  # GET /medidors.json
  def index
    @medidors = Medidor.all
  end

  # GET /medidors/1
  # GET /medidors/1.json
  def show
    @medidor = Medidor.find(params[:id])

    @geojson = Array.new
    @geojson << {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [@medidor.longitud, @medidor.latitud]
      },
      properties: {
        title: @medidor.nombre,
        description: Cliente.find(@medidor.cliente_id).domicilio,
        name: @medidor.nombre,
        address: Cliente.find(@medidor.cliente_id).domicilio,
        :'marker-color' => '#00607d',
        :'marker-symbol' => 'circle-stroked',
        :'marker-size' => 'medium'
      }
    }
  end

  # GET /medidors/new
  def new
    @medidor = Medidor.new
  end

  # GET /medidors/1/edit
  def edit
    @medidor = Medidor.find(params[:id])

    @geojson = Array.new
    @geojson << {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [@medidor.longitud, @medidor.latitud]
      },
      properties: {
        title: @medidor.nombre,
        description: Cliente.find(@medidor.cliente_id).domicilio,
        name: @medidor.nombre,
        address: Cliente.find(@medidor.cliente_id).domicilio,
        :'marker-color' => '#00607d',
        :'marker-symbol' => 'circle-stroked',
        :'marker-size' => 'medium'
      }
    }
  end

  # POST /medidors
  # POST /medidors.json
  def create
    medidor_location = session[:medidor]    
    @medidor = Medidor.new(medidor_params)
    @medidor.latitud = medidor_location['latitud']
    @medidor.longitud = medidor_location['longitud']
    @medidor.save

    respond_to do |format|
      if @medidor.save
        format.html { redirect_to @medidor, notice: 'Se ha creado un nuevo Medidor.' }
        format.json { render :show, status: :created, location: @medidor }
      else
        format.html { render :new }
        format.json { render json: @medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medidors/1
  # PATCH/PUT /medidors/1.json
  def update
    respond_to do |format|
      if @medidor.update(medidor_params)
        format.html { redirect_to @medidor, notice: 'Se ha actualizado el Medidor.' }
        format.json { render :show, status: :ok, location: @medidor }
      else
        format.html { render :edit }
        format.json { render json: @medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medidors/1
  # DELETE /medidors/1.json
  def destroy
    @medidor.destroy
    respond_to do |format|
      format.html { redirect_to medidors_url, notice: 'Se ha eliminado el Medidor.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medidor
      @medidor = Medidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medidor_params
      params.require(:medidor).permit(:numero, :nombre, :novedades, :novedades_criticas, :latitud, :longitud, :cliente_id)
    end
end
