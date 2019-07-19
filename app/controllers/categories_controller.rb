class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
  
    # GET /categories
    # GET /categories.json
    def index
      @categories = Category.all
    end
  
    # GET /categories/1
    # GET /categories/1.json
    def show
      @Category = Category.find(params[:id])
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
      @Category = Category.new(category_params)
  
      respond_to do |format|
        if @Category.save
          format.html { redirect_to @Category, notice: 'Category was successfully created.' }
          format.json { render :show, status: :created, location: @Category }
        else
          format.html { render :new }
          format.json { render json: @Category.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /Categories/1
    # PATCH/PUT /Categories/1.json
    def update
      respond_to do |format|
        if @Category.update(repairer_params)
          format.html { redirect_to @Category, notice: 'Repairer was successfully updated.' }
          format.json { render :show, status: :ok, location: @Category }
        else
          format.html { render :edit }
          format.json { render json: @Category.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /Categories/1
    # DELETE /Categories/1.json
    def destroy
      @Category.destroy
      respond_to do |format|
        format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_Category
        @Category = Category.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def Category_params
        params.require(:repairer).permit(:first_name, :last_name, :bio, :phone, :address, :city, :mail, :cellphone)
      end
  end
  