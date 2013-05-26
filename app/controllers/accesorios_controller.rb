class AccesoriosController < ApplicationController
  # GET /accesorios
  # GET /accesorios.json
  def index
    @accesorios = Accesorio.all

    
  end

  # GET /accesorios/1
  # GET /accesorios/1.json
  def show
    @accesorio = Accesorio.find(params[:id])

    
  end

  # POST /accesorios
  # POST /accesorios.json
  def create
    @accesorio = Accesorio.new(params[:accesorio])

    if @accesorio.save
      render json: @accesorio, status: :created, location: @accesorio
    else
      render json: @accesorio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accesorios/1
  # PATCH/PUT /accesorios/1.json
  def update
    @accesorio = Accesorio.find(params[:id])

    if @accesorio.update_attributes(params[:accesorio])
      head :no_content
    else
      render json: @accesorio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accesorios/1
  # DELETE /accesorios/1.json
  def destroy
    @accesorio = Accesorio.find(params[:id])
    @accesorio.destroy

    head :no_content
  end
end
