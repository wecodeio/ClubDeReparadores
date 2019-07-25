class Home::CategoriesController < Home::BaseController
    before_action :set_category, only: [:show, :edit, :update,]
  
    # GET /categories
    # GET /categories.json
    def index
      @categories = Category.all
    end
  
    # GET /categories/1
    # GET /categories/1.json
    def show
      @category = Category.find(params[:id])
    end
  
    # GET /categories/new
    def new
      @category = Category.new
    end
  
    # GET /categories/1/edit
    def edit
    end
  
    # POST /categories
    # POST /categories.json
    def create
      @category = Category.new(category_params)
  
      respond_to do |format|
        if @category.save
          format.html { redirect_to [:home,@category], notice: 'Se ha creado una nueva categoria' }
          format.json { render :show, status: :created, location: [:home,@category] }
        else
          format.html { render :new }
          format.json { render json: @category.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /Categories/1
    # PATCH/PUT /Categories/1.json
    def update
      respond_to do |format|
        if @category.update(category_params)
          format.html { redirect_to [:home,@category] , notice: 'Se ha modificado la categoria' }
          format.json { render :show, status: :ok, location: [:home,@category]  }
        else
          format.html { render :edit }
          format.json { render json: @category.errors, status: :unprocessable_entity }
        end
      end
    end

    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def category_params
        params.require(:category).permit(:name, :description)
      end
  end
  