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
    @category = Category.new({ "name" => category_params[:name] })
    keywords = category_params[:keywords].split(",")
    respond_to do |format|
      if @category.save
        keywords.each do |keyword|
          @keyword = Keyword.new({ "name" => keyword, "category_id" => @category.id })
          @keyword.save
        end
        format.html { redirect_to root_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    keywords = category_params[:keywords].split(",")
    Rails.logger.debug(keywords)
    respond_to do |format|
      if @category.update({ "name" => category_params[:name] })
        Keyword.where(category_id: @category.id).destroy_all
        keywords.each do |keyword|
          @keyword = Keyword.new({ "name" => keyword, "category_id" => @category.id })
          @keyword.save
        end
        format.html { redirect_to root_path, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :keywords)
    end
end
