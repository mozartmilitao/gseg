class SeguradorasController < ApplicationController
    def index
      @seguradoras = Seguradora.order("nome")
    end

    def show
      @seguradora = Seguradora.find(params[:id])
    end

    def new 
      @seguradora = Seguradora.new
    end

    def create
      @seguradora = Seguradora.new(params[:seguradora])
      if @seguradora.save
        redirect_to(action: "show", id: @seguradora)
      else
        render action: "new"
      end
    end

    def edit
      @seguradora = Seguradora.find(params[:id])
    end

    def update
      @seguradora = Seguradora.find(params[:id])
      if @seguradora.update_attributes(params[:seguradora])
        redirect_to(action: "show", id: @seguradora)
      else
        render action: "edit"
      end
    end

    def destroy
      @seguradora = Seguradora.find(params[:id])
      @seguradora.destroy

      redirect_to(action: "index")
    end
end
