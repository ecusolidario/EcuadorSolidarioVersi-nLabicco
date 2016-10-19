class VoluntarioHabilidadsController < ApplicationController
  before_action :set_voluntario_habilidad, only: [:show, :edit, :update, :destroy]

  # GET /voluntario_habilidads
  # GET /voluntario_habilidads.json
  def index
    @voluntario_habilidads = VoluntarioHabilidad.all
  end

  # GET /voluntario_habilidads/1
  # GET /voluntario_habilidads/1.json
  def show
  end

  # GET /voluntario_habilidads/new
  def new
    @voluntario_habilidad = VoluntarioHabilidad.new
  end

  # GET /voluntario_habilidads/1/edit
  def edit
  end

  # POST /voluntario_habilidads
  # POST /voluntario_habilidads.json
  def create
    @voluntario_habilidad = VoluntarioHabilidad.new(voluntario_habilidad_params)

    respond_to do |format|
      if @voluntario_habilidad.save
        format.html { redirect_to @voluntario_habilidad, notice: 'Voluntario habilidad was successfully created.' }
        format.json { render :show, status: :created, location: @voluntario_habilidad }
      else
        format.html { render :new }
        format.json { render json: @voluntario_habilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voluntario_habilidads/1
  # PATCH/PUT /voluntario_habilidads/1.json
  def update
    respond_to do |format|
      if @voluntario_habilidad.update(voluntario_habilidad_params)
        format.html { redirect_to @voluntario_habilidad, notice: 'Voluntario habilidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @voluntario_habilidad }
      else
        format.html { render :edit }
        format.json { render json: @voluntario_habilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voluntario_habilidads/1
  # DELETE /voluntario_habilidads/1.json
  def destroy
    @voluntario_habilidad.destroy
    respond_to do |format|
      format.html { redirect_to voluntario_habilidads_url, notice: 'Voluntario habilidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario_habilidad
      @voluntario_habilidad = VoluntarioHabilidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voluntario_habilidad_params
      params[:voluntario_habilidad]
    end
end
