class DatosPersonalsController < ApplicationController
  before_action :set_datos_personal, only: [:show, :edit, :update, :destroy]

  # GET /datos_personals
  # GET /datos_personals.json
  def index
    @datos_personals = DatosPersonal.all
  end

  # GET /datos_personals/1
  # GET /datos_personals/1.json
  def show
  end

  # GET /datos_personals/new
  def new
    @datos_personal = DatosPersonal.new
  end

  # GET /datos_personals/1/edit
  def edit
  end

  # POST /datos_personals
  # POST /datos_personals.json
  def create
    @datos_personal = DatosPersonal.new(datos_personal_params)

    respond_to do |format|
      if @datos_personal.save
        format.html { redirect_to @datos_personal, notice: 'Datos personal was successfully created.' }
        format.json { render :show, status: :created, location: @datos_personal }
      else
        format.html { render :new }
        format.json { render json: @datos_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_personals/1
  # PATCH/PUT /datos_personals/1.json
  def update
    respond_to do |format|
      if @datos_personal.update(datos_personal_params)
        format.html { redirect_to @datos_personal, notice: 'Datos personal was successfully updated.' }
        format.json { render :show, status: :ok, location: @datos_personal }
      else
        format.html { render :edit }
        format.json { render json: @datos_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_personals/1
  # DELETE /datos_personals/1.json
  def destroy
    @datos_personal.destroy
    respond_to do |format|
      format.html { redirect_to datos_personals_url, notice: 'Datos personal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_personal
      @datos_personal = DatosPersonal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_personal_params
      params.require(:datos_personal).permit(:nombre, :apellido, :telefono, :direccion, :user_id)
    end
end
