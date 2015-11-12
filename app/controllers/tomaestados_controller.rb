class TomaestadosController < ApplicationController
  before_action :set_tomaestado, only: [:show, :edit, :update, :destroy]

  # GET /tomaestados
  # GET /tomaestados.json
  def index
    @tomaestados = Tomaestado.all
  end

  # GET /tomaestados/1
  # GET /tomaestados/1.json
  def show
  end

  # GET /tomaestados/new
  def new
    @tomaestado = Tomaestado.new
  end

  # GET /tomaestados/1/edit
  def edit
  end

  # POST /tomaestados
  # POST /tomaestados.json
  def create
    @tomaestado = Tomaestado.new(tomaestado_params)

    respond_to do |format|
      if @tomaestado.save
        format.html { redirect_to @tomaestado, notice: 'Tomaestado was successfully created.' }
        format.json { render :show, status: :created, location: @tomaestado }
      else
        format.html { render :new }
        format.json { render json: @tomaestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tomaestados/1
  # PATCH/PUT /tomaestados/1.json
  def update
    respond_to do |format|
      if @tomaestado.update(tomaestado_params)
        format.html { redirect_to @tomaestado, notice: 'Tomaestado was successfully updated.' }
        format.json { render :show, status: :ok, location: @tomaestado }
      else
        format.html { render :edit }
        format.json { render json: @tomaestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tomaestados/1
  # DELETE /tomaestados/1.json
  def destroy
    @tomaestado.destroy
    respond_to do |format|
      format.html { redirect_to tomaestados_url, notice: 'Tomaestado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tomaestado
      @tomaestado = Tomaestado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tomaestado_params
      params.require(:tomaestado).permit(:dni, :apellido, :nombre, :user_id)
    end
end
