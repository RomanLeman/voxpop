class EssencesController < ApplicationController
  before_action :set_essence, only: [:show, :edit, :update, :destroy]

  # GET /essences
  # GET /essences.json
  def index
    @essences = Essence.all
  end

  # GET /essences/1
  # GET /essences/1.json
  def show
  end

  # GET /essences/new
  def new
    @essence = Essence.new
  end

  # GET /essences/1/edit
  def edit
  end

  # POST /essences
  # POST /essences.json
  def create
    @essence = Essence.new(essence_params)

    respond_to do |format|
      if @essence.save
        format.html { redirect_to @essence, notice: 'Essence was successfully created.' }
        format.json { render :show, status: :created, location: @essence }
      else
        format.html { render :new }
        format.json { render json: @essence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /essences/1
  # PATCH/PUT /essences/1.json
  def update
    respond_to do |format|
      if @essence.update(essence_params)
        format.html { redirect_to @essence, notice: 'Essence was successfully updated.' }
        format.json { render :show, status: :ok, location: @essence }
      else
        format.html { render :edit }
        format.json { render json: @essence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /essences/1
  # DELETE /essences/1.json
  def destroy
    @essence.destroy
    respond_to do |format|
      format.html { redirect_to essences_url, notice: 'Essence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_essence
      @essence = Essence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def essence_params
      params.require(:essence).permit(:title, :description, :exp, :img_url, :price, :type, :locate, :rating, :exp)
    end
end
