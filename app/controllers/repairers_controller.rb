class RepairersController < ApplicationController
  before_action :set_repairer, only: [:show, :edit, :update, :destroy]

  # GET /repairers
  # GET /repairers.json
  def index
    @repairers = Repairer.all
  end

  # GET /repairers/1
  # GET /repairers/1.json
  def show
    @repairer = Repairer.find(params[:id])
  end

  # GET /repairers/new
  def new
    @repairer = Repairer.new
  end

  # GET /repairers/1/edit
  def edit
  end

  # POST /repairers
  # POST /repairers.json
  def create
    @repairer = Repairer.new(repairer_params)

    respond_to do |format|
      if @repairer.save
        format.html { redirect_to @repairer, notice: 'Repairer was successfully created.' }
        format.json { render :show, status: :created, location: @repairer }
      else
        format.html { render :new }
        format.json { render json: @repairer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repairers/1
  # PATCH/PUT /repairers/1.json
  def update
    respond_to do |format|
      if @repairer.update(repairer_params)
        format.html { redirect_to @repairer, notice: 'Repairer was successfully updated.' }
        format.json { render :show, status: :ok, location: @repairer }
      else
        format.html { render :edit }
        format.json { render json: @repairer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repairers/1
  # DELETE /repairers/1.json
  def destroy
    @repairer.destroy
    respond_to do |format|
      format.html { redirect_to repairers_url, notice: 'Repairer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repairer
      @repairer = Repairer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repairer_params
      params.require(:repairer).permit(:first_name, :last_name, :bio, :phone, :address, :city, :mail)
    end
end
