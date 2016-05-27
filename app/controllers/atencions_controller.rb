class AtencionsController < ApplicationController
  before_action :set_atencion, only: [:show, :edit, :update, :destroy]

  # GET /atencions
  # GET /atencions.json
  def index
    @atencions = Atencion.all
  end

  # GET /atencions/1
  # GET /atencions/1.json
  def show
  end

  # GET /atencions/new
  def new
    @atencion = Atencion.new
  end
  def asignar_mascota

     @atencion = Atencion.find(params[:id])
     @atencion.mascotum_id = params[:cliente][:cliente_id]   
     @atencion.save
     respond_to do |format|      
        format.html { redirect_to @atencion, notice: 'Mascota asignada' }
     end
  end
  # GET /atencions/1/edit
  def edit
  end

  # POST /atencions
  # POST /atencions.json
  def create
    @atencion = Atencion.new(atencion_params)

    respond_to do |format|
      if @atencion.save
        format.html { redirect_to @atencion, notice: 'Atencion creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @atencion }
      else
        format.html { render :new }
        format.json { render json: @atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atencions/1
  # PATCH/PUT /atencions/1.json
  def update
    respond_to do |format|
      if @atencion.update(atencion_params)
        format.html { redirect_to @atencion, notice: 'Cambios guardados!.' }
        format.json { render :show, status: :ok, location: @atencion }
      else
        format.html { render :edit }
        format.json { render json: @atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atencions/1
  # DELETE /atencions/1.json
  def destroy
    @atencion.destroy
    respond_to do |format|
      format.html { redirect_to atencions_url, notice: 'Atencion eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atencion
      @atencion = Atencion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atencion_params
      params.require(:atencion).permit(:fecha,:anamnesis, :temperatura, :mucosas, :palpacion, :diagnostico, :tratamiento,:cliente_id,:mascotum_id,:veterinario_id)
    end
end
