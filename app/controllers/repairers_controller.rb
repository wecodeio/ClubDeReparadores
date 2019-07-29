class RepairersController < ApplicationController
 
    # GET /repairers
    # GET /repairers.json
    def index
      @categories =  Category.all
    end
    def show
      @category = Repairer.find(params[:id])
    end
    def new
      @repairer = Repairer.new
    end
  end