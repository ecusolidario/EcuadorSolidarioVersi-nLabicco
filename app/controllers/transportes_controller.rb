class TransportesController < ApplicationController
  before_action :set_transporte, only: [:show, :edit, :update, :destroy]

  # GET /transportes
  # GET /transportes.json
  def index
    @transportes = Transporte.all
  end

  # GET /transportes/1
  # GET /transportes/1.json
  def show
  end

  # GET /transportes/new
  def new
    @transporte = Transporte.new
  end

  # GET /transportes/1/edit
  def edit
  end

  # POST /transportes
  # POST /transportes.json
  def create
    @transporte = Transporte.new(transporte_params)

    respond_to do |format|
      if @transporte.save
        format.html { redirect_to @transporte, notice: 'Transporte was successfully created.' }
        format.json { render :show, status: :created, location: @transporte }
      else
        format.html { render :new }
        format.json { render json: @transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportes/1
  # PATCH/PUT /transportes/1.json
  def update
    respond_to do |format|
      if @transporte.update(transporte_params)
        format.html { redirect_to @transporte, notice: 'Transporte was successfully updated.' }
        format.json { render :show, status: :ok, location: @transporte }
      else
        format.html { render :edit }
        format.json { render json: @transporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportes/1
  # DELETE /transportes/1.json
  def destroy
    @transporte.destroy
    respond_to do |format|
      format.html { redirect_to transportes_url, notice: 'Transporte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transporte
      @transporte = Transporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transporte_params
      params[:transporte]
    end
end
