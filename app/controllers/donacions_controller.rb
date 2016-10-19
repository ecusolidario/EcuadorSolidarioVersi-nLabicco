class DonacionsController < ApplicationController
  before_action :set_donacion, only: [:show, :edit, :update, :destroy]

  # GET /donacions
  # GET /donacions.json
  def index
    @donacions = Donacion.all
  end

  # GET /donacions/1
  # GET /donacions/1.json
  def show
  end

  # GET /donacions/new
  def new
    @donacion = Donacion.new
  end

  # GET /donacions/1/edit
  def edit
  end

  # POST /donacions
  # POST /donacions.json
  def create
    @donacion = Donacion.new(donacion_params)

    respond_to do |format|
      if @donacion.save
        format.html { redirect_to @donacion, notice: 'Donacion was successfully created.' }
        format.json { render :show, status: :created, location: @donacion }
      else
        format.html { render :new }
        format.json { render json: @donacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donacions/1
  # PATCH/PUT /donacions/1.json
  def update
    respond_to do |format|
      if @donacion.update(donacion_params)
        format.html { redirect_to @donacion, notice: 'Donacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @donacion }
      else
        format.html { render :edit }
        format.json { render json: @donacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donacions/1
  # DELETE /donacions/1.json
  def destroy
    @donacion.destroy
    respond_to do |format|
      format.html { redirect_to donacions_url, notice: 'Donacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donacion
      @donacion = Donacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donacion_params
      params[:donacion]
    end
end
