class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    pp @movie
    if @movie.save
      redirect_to '/movies/index', notice: 'La movie se ha creado correctamente.'
    else
      render :new
    end
  end

  def new
    @movie = Movie.new
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
