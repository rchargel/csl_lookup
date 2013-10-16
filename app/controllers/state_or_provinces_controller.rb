class StateOrProvincesController < ApplicationController
  before_action :set_state_or_province, only: [:show, :edit, :update, :destroy]

  # GET /state_or_provinces
  # GET /state_or_provinces.json
  def index
    @state_or_provinces = StateOrProvince.all
  end

  # GET /state_or_provinces/1
  # GET /state_or_provinces/1.json
  def show
  end

  # GET /state_or_provinces/new
  def new
    @state_or_province = StateOrProvince.new
  end

  # GET /state_or_provinces/1/edit
  def edit
  end

  # POST /state_or_provinces
  # POST /state_or_provinces.json
  def create
    @state_or_province = StateOrProvince.new(state_or_province_params)

    respond_to do |format|
      if @state_or_province.save
        format.html { redirect_to @state_or_province, notice: 'State or province was successfully created.' }
        format.json { render action: 'show', status: :created, location: @state_or_province }
      else
        format.html { render action: 'new' }
        format.json { render json: @state_or_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_or_provinces/1
  # PATCH/PUT /state_or_provinces/1.json
  def update
    respond_to do |format|
      if @state_or_province.update(state_or_province_params)
        format.html { redirect_to @state_or_province, notice: 'State or province was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @state_or_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_or_provinces/1
  # DELETE /state_or_provinces/1.json
  def destroy
    @state_or_province.destroy
    respond_to do |format|
      format.html { redirect_to state_or_provinces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_or_province
      @state_or_province = StateOrProvince.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_or_province_params
      params.require(:state_or_province).permit(:name, :postalAbbreviation)
    end
end
