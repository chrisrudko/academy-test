class CityController < ApplicationController

  def new
  end

  def create
    @city = City.new(params.require(:city).permit(:name, :short_name))  
    @city.save
    redirect_to @city
  end

  def update
    @city = City.find(params[:id])
 
    if @city.update(params.require(:city).permit(:name, :short_name))
      redirect_to @city
    else
      render 'edit'
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
 
    redirect_to city_index_path
  end

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end
end
