class RepairersController < ApplicationController
 
    # GET /repairers
    # GET /repairers.json
    def index
      @categories =  Category.all
    end
    def show
      @repairer = Repairer.find(params[:id])
    end
    def new
      @repairer = Repairer.new
    end
    def create
      @repairer = Repairer.new(repairer_params)
  
      respond_to do |format|
        if @repairer.save
          format.html { redirect_to @repairer, notice: 'El reparador fue exitosamente creado' }
          format.json { render :show, status: :created, location: @repairer }
        else
          format.html { render :new }
          format.json { render json: @repairer.errors, status: :unprocessable_entity }
        end
      end
    end
    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def repairer_params
      params.require(:repairer).permit(:first_name, :last_name, :bio, :phone, :address, :city, :mail, :cellphone)
    end
    def search
    end
  end