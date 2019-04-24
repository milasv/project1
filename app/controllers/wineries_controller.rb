class WineriesController < ApplicationController
  def index
    @wineries = Winery.all
  end

  def show
    @winery = Winery.find params[:id]
  end

  def new
    @winery = Winery.new
  end

  def create
    winery = Winery.create winery_params
    redirect_to winery_path(winery.id)
  end

  def edit
    @winery = Winery.find params[:id]
  end

  def update
    winery = Winery.find params[:id]
    winery.update winery_params
    redirect_to winery_path(winery.id)
  end

  def destroy
    winery = Winery.find params[:id]
    winery.destroy
    redirect_to wineries_path
  end

  private
  def winery_params
    # Strong parameters: whitelist of sanitized input (stuff that is OKAY to put in the database)
    params.require(:winery).permit(:name, :year, :founder, :history, :image)
  end
end
