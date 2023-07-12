class DocumentaryfilmsController < ApplicationController
  def index
    @documentary_film = DocumentaryFilm.all
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)
    pp @documentary_film
    if @documentary_film.save
      redirect_to '/documentaryfilms/index', notice: 'La documentaryfilm se ha creado correctamente.'
    else
      render :new
    end
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  private

  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
