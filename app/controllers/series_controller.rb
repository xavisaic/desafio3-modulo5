class SeriesController < ApplicationController
  def index
    @serie = Serie.all
  end

  def create
    @serie = Serie.new(serie_params)
    pp @serie
    if @serie.save
      redirect_to '/series/index', notice: 'La serie se ha creado correctamente.'
    else
      render :new
    end
  end

  def new
    @serie = Serie.new
  end

  private

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end


end


