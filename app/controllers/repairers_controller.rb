class RepairersController < ApplicationController
 
    # GET /repairers
    # GET /repairers.json
    def index
      @repairers = Repairer.all
    end
    def show
      @repairer = Repairer.find(params[:id])
    end

  end