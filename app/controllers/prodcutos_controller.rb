class ProdcutosController < ApplicationController
  before_action :set_prodcuto, only: [:show, :edit, :update, :destroy]

  # GET /prodcutos
  # GET /prodcutos.json
  def index
    @prodcutos = Prodcuto.all
  end

  # GET /prodcutos/1
  # GET /prodcutos/1.json
  def show
  end

  # GET /prodcutos/new
  def new
    @prodcuto = Prodcuto.new
  end

  def modificar
    @prodcuto = Prodcuto.find(params[:id])
    if(  @prodcuto.cantidad - params[:cantbox].to_i >= 0 )
      @prodcuto.cantidad=@prodcuto.cantidad - params[:cantbox].to_i
      @prodcuto.save
      respond_to do |format|
        format.html { redirect_to @prodcuto, notice: 'Producto retirado de almacen' }
      end
    else
      respond_to do |format|
        format.html { redirect_to @prodcuto, notice: 'Error al modificar,cantidad insuficiente en almacen ' }
      end
    end
  end
  def reabastecer
    @prodcuto = Prodcuto.find(params[:id])
    if(  @prodcuto.cantidad - params[:cantbox].to_i >= 0 )
      @prodcuto.cantidad=@prodcuto.cantidad + params[:cantbox].to_i
      @prodcuto.save
      respond_to do |format|
        format.html { redirect_to @prodcuto, notice: 'Producto retirado de almacen' }
      end
    else
      respond_to do |format|
        format.html { redirect_to @prodcuto, notice: 'Error al modificar,cantidad insuficiente en almacen ' }
      end
    end
  end
  # GET /prodcutos/1/edit
  def edit
  end

  # POST /prodcutos
  # POST /prodcutos.json
  def create
    @prodcuto = Prodcuto.new(prodcuto_params)

    respond_to do |format|
      if @prodcuto.save
        format.html { redirect_to @prodcuto, notice: 'Prodcuto creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @prodcuto }
      else
        format.html { render :new }
        format.json { render json: @prodcuto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodcutos/1
  # PATCH/PUT /prodcutos/1.json
  def update
    respond_to do |format|
      if @prodcuto.update(prodcuto_params)
        format.html { redirect_to @prodcuto, notice: 'Prodcuto fue modificado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @prodcuto }
      else
        format.html { render :edit }
        format.json { render json: @prodcuto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodcutos/1
  # DELETE /prodcutos/1.json
  def destroy
    @prodcuto.destroy
    respond_to do |format|
      format.html { redirect_to prodcutos_url, notice: 'Prodcuto eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodcuto
      @prodcuto = Prodcuto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodcuto_params
      params.require(:prodcuto).permit(:codigo, :nombre, :fecha_vencimiento, :cantidad, :Precio)
    end
end
