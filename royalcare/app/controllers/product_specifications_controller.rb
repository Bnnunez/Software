class ProductSpecificationsController < ApplicationController
  before_action :set_product_specification, only: [:show, :edit, :update, :destroy]

  # GET /product_specifications
  # GET /product_specifications.json
  def index
    @product_specifications = ProductSpecification.all
  end

  # GET /product_specifications/1
  # GET /product_specifications/1.json
  def show
  end

  # GET /product_specifications/new
  def new
    @product_specification = ProductSpecification.new
  end

  # GET /product_specifications/1/edit
  def edit
  end

  # POST /product_specifications
  # POST /product_specifications.json
  def create
    @product_specification = ProductSpecification.new(product_specification_params)

    respond_to do |format|
      if @product_specification.save
        format.html { redirect_to @product_specification, notice: 'Product specification was successfully created.' }
        format.json { render :show, status: :created, location: @product_specification }
      else
        format.html { render :new }
        format.json { render json: @product_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_specifications/1
  # PATCH/PUT /product_specifications/1.json
  def update
    respond_to do |format|
      if @product_specification.update(product_specification_params)
        format.html { redirect_to @product_specification, notice: 'Product specification was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_specification }
      else
        format.html { render :edit }
        format.json { render json: @product_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_specifications/1
  # DELETE /product_specifications/1.json
  def destroy
    @product_specification.destroy
    respond_to do |format|
      format.html { redirect_to product_specifications_url, notice: 'Product specification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_specification
      @product_specification = ProductSpecification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_specification_params
      params.require(:product_specification).permit(:size, :price, :product_id)
    end
end
