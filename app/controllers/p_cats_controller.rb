class PCatsController < ApplicationController
  before_action :set_p_cat, only: [:show, :edit, :update, :destroy]

  # GET /p_cats
  # GET /p_cats.json
  def index
    @p_cats = PCat.all
  end

  # GET /p_cats/1
  # GET /p_cats/1.json
  def show
    @p_cats = PCat.all
  end

  # GET /p_cats/new
  def new
    @myproducts = Product.all
    @p_cats = PCat.all
    @p_cat = PCat.new
  end

  # GET /p_cats/1/edit
  def edit
    @p_cats = PCat.all
  end

  # POST /p_cats
  # POST /p_cats.json
  def create
    @p_cat = PCat.new(p_cat_params)

    respond_to do |format|
      if @p_cat.save
        format.html { redirect_to @p_cat, notice: 'P cat was successfully created.' }
        format.json { render :show, status: :created, location: @p_cat }
      else
        format.html { render :new }
        format.json { render json: @p_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_cats/1
  # PATCH/PUT /p_cats/1.json
  def update
    respond_to do |format|
      if @p_cat.update(p_cat_params)
        format.html { redirect_to @p_cat, notice: 'P cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_cat }
      else
        format.html { render :edit }
        format.json { render json: @p_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_cats/1
  # DELETE /p_cats/1.json
  def destroy
    @p_cat.destroy
    respond_to do |format|
      format.html { redirect_to p_cats_url, notice: 'P cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_cat
      @p_cat = PCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_cat_params
      params.require(:p_cat).permit(:title, :desc)
    end
end
