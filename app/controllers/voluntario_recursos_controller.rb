class VoluntarioRecursosController < ApplicationController
  before_action :set_voluntario_recurso, only: [:show, :edit, :update, :destroy]

  # GET /voluntario_recursos
  # GET /voluntario_recursos.json
  def index
    @voluntario_recursos = VoluntarioRecurso.all
  end

  # GET /voluntario_recursos/1
  # GET /voluntario_recursos/1.json
  def show
  end

  # GET /voluntario_recursos/new
  def new
    @voluntario_recurso = VoluntarioRecurso.new
  end

  # GET /voluntario_recursos/1/edit
  def edit
  end

  # POST /voluntario_recursos
  # POST /voluntario_recursos.json
  def create
    @voluntario_recurso = VoluntarioRecurso.new(voluntario_recurso_params)

    respond_to do |format|
      if @voluntario_recurso.save
        format.html { redirect_to @voluntario_recurso, notice: 'Voluntario recurso was successfully created.' }
        format.json { render :show, status: :created, location: @voluntario_recurso }
      else
        format.html { render :new }
        format.json { render json: @voluntario_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voluntario_recursos/1
  # PATCH/PUT /voluntario_recursos/1.json
  def update
    respond_to do |format|
      if @voluntario_recurso.update(voluntario_recurso_params)
        format.html { redirect_to @voluntario_recurso, notice: 'Voluntario recurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @voluntario_recurso }
      else
        format.html { render :edit }
        format.json { render json: @voluntario_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voluntario_recursos/1
  # DELETE /voluntario_recursos/1.json
  def destroy
    @voluntario_recurso.destroy
    respond_to do |format|
      format.html { redirect_to voluntario_recursos_url, notice: 'Voluntario recurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario_recurso
      @voluntario_recurso = VoluntarioRecurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voluntario_recurso_params
      params[:voluntario_recurso]
    end
end
