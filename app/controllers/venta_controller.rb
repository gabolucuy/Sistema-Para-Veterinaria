class VentaController < ApplicationController
  before_action :set_ventum, only: [:show, :edit, :update, :destroy]

  # GET /venta
  # GET /venta.json
  def index
    @venta = Ventum.all
  end

  # GET /venta/1
  # GET /venta/1.json
  def show
    @ventum.Costo=List.where( ventum_id: params[:id]).sum(:costo)
    @ventum.save
    @list = List.new
  end
  def  cambiar
    @ventum = Ventum.find(params[:id])
    if @ventum.Costo ==0
       respond_to do |format|
          format.html { redirect_to @ventum, notice: 'Error al terminar.' }
      end
    else
      @ventum.estado =true
      @ventum.save
      respond_to do |format|
          format.html { redirect_to @ventum, notice: 'Venta terminada.' }
      end
    end  
    
  end
  # GET /venta/new
  def new
    @ventum = Ventum.new
  end

  # GET /venta/1/edit
  def edit
  end

  # POST /venta
  # POST /venta.json
  def create
    @ventum = Ventum.new(ventum_params)
    @ventum.estado =false
    respond_to do |format|
      if @ventum.save
        format.html { redirect_to @ventum, notice: 'Ventcreada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @ventum }
      else
        format.html { render :new }
        format.json { render json: @ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venta/1
  # PATCH/PUT /venta/1.json
  def update
    respond_to do |format|
      if @ventum.update(ventum_params)
        format.html { redirect_to @ventum, notice: 'Venta fue modificado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @ventum }
      else
        format.html { render :edit }
        format.json { render json: @ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venta/1
  # DELETE /venta/1.json
  def destroy
    @ventum.destroy
    respond_to do |format|
      format.html { redirect_to venta_url, notice: 'Venteliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventum
      @ventum = Ventum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventum_params
      params.require(:ventum).permit(:Costo,:cliente_id,:estado)
    end
end
