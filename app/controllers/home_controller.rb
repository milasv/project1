class HomeController < ApplicationController
  def index
    @home = Region.all
  end
end
