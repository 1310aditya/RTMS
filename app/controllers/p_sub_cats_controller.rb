class PSubCatsController < ApplicationController
  before_action :set_p_sub_cat, only: [:show, :edit, :update, :destroy]

  # GET /p_sub_cats
  # GET /p_sub_cats.json
  def index
    @p_sub_cats = PSubCat.all
  end

  # GET /p_sub_cats/1
  # GET /p_sub_cats/1.json
  def show
  end

  # GET /p_sub_cats/new
  def new
    @p_sub_cat = PSubCat.new
  end

  # GET /p_sub_cats/1/edit
  def edit
  end

  # POST /p_sub_cats
  # POST /p_sub_cats.json
  def create
    @p_sub_cat = PSubCat.new(p_sub_cat_params)

    respond_to do |format|
      if @p_sub_cat.save
        format.html { redirect_to @p_sub_cat, notice: 'P sub cat was successfully created.' }
        format.json { render :show, status: :created, location: @p_sub_cat }
      else
        format.html { render :new }
        format.json { render json: @p_sub_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_sub_cats/1
  # PATCH/PUT /p_sub_cats/1.json
  def update
    respond_to do |format|
      if @p_sub_cat.update(p_sub_cat_params)
        format.html { redirect_to @p_sub_cat, notice: 'P sub cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_sub_cat }
      else
        format.html { render :edit }
        format.json { render json: @p_sub_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_sub_cats/1
  # DELETE /p_sub_cats/1.json
  def destroy
    @p_sub_cat.destroy
    respond_to do |format|
      format.html { redirect_to p_sub_cats_url, notice: 'P sub cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_sub_cat
      @p_sub_cat = PSubCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_sub_cat_params
      params.require(:p_sub_cat).permit(:title, :desc)
    end
end
