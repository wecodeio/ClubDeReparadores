class Home::RepairersController < Home::BaseController
  before_action :set_repairer, only: [:show, :edit, :update,]

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
        format.html { redirect_to [:home,@repairer], notice: 'El reparador fue exitosamente creado' }
        format.json { render :show, status: :created, location: [:home,@repairer] }
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
        format.html { redirect_to [:home,@repairer], notice: 'Se ha actualizado al reparador' }
        format.json { render :show, status: :ok, location: [:home,@repairer] }
      else
        format.html { render :edit }
        format.json { render json: @repairer.errors, status: :unprocessable_entity }
      end
    end
  end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repairer
      @repairer = Repairer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repairer_params
      params.require(:repairer).permit(:first_name, :last_name, :bio, :phone, :address, :city, :mail, :cellphone)
    end
end
