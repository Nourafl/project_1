class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @Service = Service.find_by(id: params[:id])
  end

  def edit
  end

  def create
  end
end
