class SubestacionsController < ApplicationController
  before_action :set_subestacion, only: [:show, :edit, :update, :destroy]

  # GET /subestacions
  # GET /subestacions.json
  def index
    @subestacions = Subestacion.all
  end

  # GET /subestacions/1
  # GET /subestacions/1.json
  def show   
  end

  # GET /subestacions/new
  def new
    @subestacion = Subestacion.new
    # require the ability to create Subestacions
    authorize! :new, @subestacion, :message => "Inicie sesión para poder continuar"
  end

  # GET /subestacions/1/edit
  def edit
  end

  # POST /subestacions
  # POST /subestacions.json
  def create
    @subestacion = Subestacion.new(subestacion_params)

    respond_to do |format|
      if @subestacion.save
        format.html { redirect_to @subestacion, notice: 'Se ha creado una nueva Subestacion.' }
        format.json { render :show, status: :created, location: @subestacion }
      else
        format.html { render :new }
        format.json { render json: @subestacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subestacions/1
  # PATCH/PUT /subestacions/1.json
  def update
    respond_to do |format|
      if @subestacion.update(subestacion_params)
        format.html { redirect_to @subestacion, notice: 'Se ha actualizado la Subestación.' }
        format.json { render :show, status: :ok, location: @subestacion }
      else
        format.html { render :edit }
        format.json { render json: @subestacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subestacions/1
  # DELETE /subestacions/1.json
  def destroy
    @subestacion.destroy
    respond_to do |format|
      format.html { redirect_to subestacions_url, notice: 'Se ha eliminado la Subestación.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subestacion
      @subestacion = Subestacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subestacion_params
      params.require(:subestacion).permit(:codigo, :nombre)
    end
end
