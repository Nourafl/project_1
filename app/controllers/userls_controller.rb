class UserlsController < ApplicationController
  before_action :set_userl, only: [:show, :edit, :update, :destroy]

  # GET /userls
  # GET /userls.json
  def index
    @userls = Userl.all
  end

  # GET /userls/1
  # GET /userls/1.json
  def show
  end

  # GET /userls/new
  def new
    @userl = Userl.new
  end

  # GET /userls/1/edit
  def edit
  end

  # POST /userls
  # POST /userls.json
  def create
    @userl = Userl.new(userl_params)

    respond_to do |format|
      if @userl.save
        format.html { redirect_to @userl, notice: 'Userl was successfully created.' }
        format.json { render :show, status: :created, location: @userl }
      else
        format.html { render :new }
        format.json { render json: @userl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userls/1
  # PATCH/PUT /userls/1.json
  def update
    respond_to do |format|
      if @userl.update(userl_params)
        format.html { redirect_to @userl, notice: 'Userl was successfully updated.' }
        format.json { render :show, status: :ok, location: @userl }
      else
        format.html { render :edit }
        format.json { render json: @userl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userls/1
  # DELETE /userls/1.json
  def destroy
    @userl.destroy
    respond_to do |format|
      format.html { redirect_to userls_url, notice: 'Userl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userl
      @userl = Userl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userl_params
      params.require(:userl).permit(:name, :email, :login)
    end
end
