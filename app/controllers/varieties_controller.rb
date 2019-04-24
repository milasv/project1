class VarietiesController < ApplicationController
  def index
    @varieties = Variety.all
  end

  def show
    @variety = Variety.find params[:id]
  end

  def new
    @variety = Variety.new
  end

  def create
    variety = Variety.create variety_params
    redirect_to variety_path(variety.id)
  end

  def edit
    @variety = Variety.find params[:id]
  end

  def update
    variety = Variety.find params[:id]
    variety.update variety_params
    redirect_to variety_path(variety.id)
  end

  def destroy
    variety = Variety.find params[:id]
    variety.destroy
    redirect_to varieties_path
  end

  private
  def variety_params
    # Strong parameters: whitelist of sanitized input (stuff that is OKAY to put in the database)
    params.require(:variety).permit(:name, :color, :origin, :food, :history, :image)
  end

  def set_variety
    @variety = Variety.find params[:id]
    end

end
