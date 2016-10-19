class RecursosController < ApplicationController
  before_action :set_recurso, only: [:show, :edit, :update, :destroy]

  # GET /recursos
  # GET /recursos.json
  def index
    @recursos = Recurso.all
  end

  # GET /recursos/1
  # GET /recursos/1.json
  def show
  end

  # GET /recursos/new
  def new
    @recurso = Recurso.new
  end

  # GET /recursos/1/edit
  def edit
  end

  # POST /recursos
  # POST /recursos.json
  def create
    @recurso = Recurso.new(recurso_params)

    respond_to do |format|
      if @recurso.save
        format.html { redirect_to @recurso, notice: 'Recurso was successfully created.' }
        format.json { render :show, status: :created, location: @recurso }
      else
        format.html { render :new }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recursos/1
  # PATCH/PUT /recursos/1.json
  def update
    respond_to do |format|
      if @recurso.update(recurso_params)
        format.html { redirect_to @recurso, notice: 'Recurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @recurso }
      else
        format.html { render :edit }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recursos/1
  # DELETE /recursos/1.json
  def destroy
    @recurso.destroy
    respond_to do |format|
      format.html { redirect_to recursos_url, notice: 'Recurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recurso
      @recurso = Recurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recurso_params
      params[:recurso]
    end
end
