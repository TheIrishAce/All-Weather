class RainfallsController < ApplicationController
  #before_action :authenticate_user!
  # GET /movies/1/rainfalls
  def index
    # For URL like /movies/1/rainfalls
    # Get the movie with id=1
    @forecast = Forecast.find(params[:forecast_id])
    # Access all rainfalls for that movie
    @rainfalls = @forecast.rainfall
  end
    
  # GET /movies/1/rainfalls/2
  def show
    @forecast = Forecast.find(params[:forecast_id])
    # For URL like /movies/1/rainfalls/2
    # Find an review in movies 1 that has id=2
    @rainfall = @forecast.rainfall.find(params[:id])
  end
    
  # GET /movies/1/rainfalls/new
  def new
    @forecast = Forecast.find(params[:forecast_id])
    # Associate an review object with movie 1
    @rainfall = @forecast.rainfall.build
  end
    
  # POST /movies/1/rainfalls
  def create
    @forecast = Forecast.find(params[:forecast_id])
    # For URL like /movies/1/rainfalls
    # Populate an review associate with movie 1 with form data
    # Movie will be associated with the review
    # @rainfall = @forecast.rainfalls.build(params.require(:review).permit!)
    @rainfall = @forecast.rainfall.build(params.require(:rainfall).permit(:amount))
    if @rainfall.save
    # Save the review successfully
    redirect_to forecast_rainfall_url(@forecast, @rainfall)
    else
    render :action => "new"
    end
  end
    
    # GET /movies/1/rainfalls/2/edit
  def edit
    @forecast = Forecast.find(params[:forecast_id])
    # For URL like /movies/1/rainfalls/2/edit
    # Get review id=2 for movie 1
    @rainfall = @forecast.rainfall.find(params[:id])
  end
    
    # PUT /movies/1/rainfalls/2
  def update
    @forecast = Forecast.find(params[:forecast_id])
    @rainfall = Rainfall.find(params[:id])
    if @rainfall.update_attributes(params.require(:rainfall).permit(:amount))
    # Save the review successfully
    redirect_to forecast_rainfall_url(@forecast, @rainfall)
    else
    render :action => "edit"
    end
  end
    
    # DELETE /movies/1/rainfalls/2
    def destroy
    @forecast = Forecast.find(params[:forecast_id])
    @rainfall = Rainfall.find(params[:id])
    @rainfall.destroy
    respond_to do |format|
    format.html { redirect_to forecast_rainfalls_path(@forecast) }
    format.xml { head :ok }
    end
  end
end
  