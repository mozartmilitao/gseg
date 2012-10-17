class TipoSegurosController < ApplicationController
  # GET /tipo_seguros
  # GET /tipo_seguros.json
  def index
    @tipo_seguros = TipoSeguro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_seguros }
    end
  end

  # GET /tipo_seguros/1
  # GET /tipo_seguros/1.json
  def show
    @tipo_seguro = TipoSeguro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_seguro }
    end
  end

  # GET /tipo_seguros/new
  # GET /tipo_seguros/new.json
  def new
    @tipo_seguro = TipoSeguro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_seguro }
    end
  end

  # GET /tipo_seguros/1/edit
  def edit
    @tipo_seguro = TipoSeguro.find(params[:id])
  end

  # POST /tipo_seguros
  # POST /tipo_seguros.json
  def create
    @tipo_seguro = TipoSeguro.new(params[:tipo_seguro])

    respond_to do |format|
      if @tipo_seguro.save
        format.html { redirect_to @tipo_seguro, notice: 'Tipo seguro was successfully created.' }
        format.json { render json: @tipo_seguro, status: :created, location: @tipo_seguro }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_seguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_seguros/1
  # PUT /tipo_seguros/1.json
  def update
    @tipo_seguro = TipoSeguro.find(params[:id])

    respond_to do |format|
      if @tipo_seguro.update_attributes(params[:tipo_seguro])
        format.html { redirect_to @tipo_seguro, notice: 'Tipo seguro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_seguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_seguros/1
  # DELETE /tipo_seguros/1.json
  def destroy
    @tipo_seguro = TipoSeguro.find(params[:id])
    @tipo_seguro.destroy

    respond_to do |format|
      format.html { redirect_to tipo_seguros_url }
      format.json { head :no_content }
    end
  end
end
