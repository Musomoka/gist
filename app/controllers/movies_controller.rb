class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /movies
  # GET /movies.json
  
  def index
    @movies = Movie.all
    
  end

 
  def show
      @reviews = Review.where(movie_id: @movie.id)
  end


  def new
    @movie = current_user.movies.build
  end


  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = current_user.movies.build(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
       
      else
        format.html { render :new }
    
      end
    end
  end

 
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to movies_url, notice: 'Movie was successfully updated.' }
       
      else
        format.html { render :edit }
      
      end
    end
  end


  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_movie
      @movie = Movie.find(params[:id])
    end

   
    def movie_params
      params.require(:movie).permit(:Title, :Desscription, :Movie_length, :Director, :rating, :image )
    end




end
