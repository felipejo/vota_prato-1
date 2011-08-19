class PratosController < ApplicationController

  def new
    @prato = Prato.new
    @restaurantes = Restaurante.order "nome"
  end

  def create
    @prato = Prato.new params[:prato]
    if @prato.save
      #redirect_to :action => "show", :id => @prato
      render :text => "Prato criado com sucesso!"
    else
      redirect_to :action => "new"
    end
  end
  
end
