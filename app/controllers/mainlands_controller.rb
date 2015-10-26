class MainlandsController < ApplicationController
  before_action :set_mainland, only: [:show, :edit, :update, :destroy]

  # GET /mainlands
  # GET /mainlands.json
  def index
    @mainlands = Mainland.all
  end

  # GET /mainlands/1
  # GET /mainlands/1.json
  def show
  end

  # GET /mainlands/new
  def new
    @mainland = Mainland.new
  end

  # GET /mainlands/1/edit
  def edit
  end

  # POST /mainlands
  # POST /mainlands.json
  def create
    @mainland = Mainland.new(mainland_params)

    respond_to do |format|
      if @mainland.save
        format.html { redirect_to @mainland, notice: 'Mainland was successfully created.' }
        format.json { render :show, status: :created, location: @mainland }
      else
        format.html { render :new }
        format.json { render json: @mainland.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainlands/1
  # PATCH/PUT /mainlands/1.json
  def update
    respond_to do |format|
      if @mainland.update(mainland_params)
        format.html { redirect_to @mainland, notice: 'Mainland was successfully updated.' }
        format.json { render :show, status: :ok, location: @mainland }
      else
        format.html { render :edit }
        format.json { render json: @mainland.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainlands/1
  # DELETE /mainlands/1.json
  def destroy
    @mainland.destroy
    respond_to do |format|
      format.html { redirect_to mainlands_url, notice: 'Mainland was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainland
      @mainland = Mainland.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mainland_params
      params.require(:mainland).permit(:name, :project_id, :number_of_species)
    end
end
