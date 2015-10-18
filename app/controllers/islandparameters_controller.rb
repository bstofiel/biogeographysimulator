class IslandparametersController < ApplicationController
  before_action :set_islandparameter, only: [:show, :edit, :update, :destroy]

  # GET /islandparameters
  # GET /islandparameters.json
  def index
    @islandparameters = Islandparameter.all
  end

  # GET /islandparameters/1
  # GET /islandparameters/1.json
  def show
  end

  # GET /islandparameters/new
  def new
    @islandparameter = Islandparameter.new
  end

  # GET /islandparameters/1/edit
  def edit
  end

  # POST /islandparameters
  # POST /islandparameters.json
  def create
    @islandparameter = Islandparameter.new(islandparameter_params)

    respond_to do |format|
      if @islandparameter.save
        format.html { redirect_to @islandparameter, notice: 'Islandparameter was successfully created.' }
        format.json { render :show, status: :created, location: @islandparameter }
      else
        format.html { render :new }
        format.json { render json: @islandparameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /islandparameters/1
  # PATCH/PUT /islandparameters/1.json
  def update
    respond_to do |format|
      if @islandparameter.update(islandparameter_params)
        format.html { redirect_to @islandparameter, notice: 'Islandparameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @islandparameter }
      else
        format.html { render :edit }
        format.json { render json: @islandparameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /islandparameters/1
  # DELETE /islandparameters/1.json
  def destroy
    @islandparameter.destroy
    respond_to do |format|
      format.html { redirect_to islandparameters_url, notice: 'Islandparameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_islandparameter
      @islandparameter = Islandparameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def islandparameter_params
      params[:islandparameter].permit(:name, :number_of_species, :number_of_islands, :island_width, :island_length, :distance_from_mainland, :number_of_generations )
    end
end
