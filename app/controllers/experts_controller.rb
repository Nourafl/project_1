class ExpertsController < ApplicationController
  def index
    @experts = Expert.all
  end

  def show
    @expert = Expert.find_by(id: params[:id])
  end

  def edit
  end

  def new
  end
end
