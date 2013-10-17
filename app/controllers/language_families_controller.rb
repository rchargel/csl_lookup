class LanguageFamiliesController < ApplicationController
  before_action :set_language_family, only: [:show, :edit, :update, :destroy]

  # GET /language_families
  # GET /language_families.json
  def index
    @language_families = LanguageFamily.all
  end

  # GET /language_families/1
  # GET /language_families/1.json
  def show
  end

  # GET /language_families/new
  def new
    @language_family = LanguageFamily.new
  end

  # GET /language_families/1/edit
  def edit
  end

  # POST /language_families
  # POST /language_families.json
  def create
    @language_family = LanguageFamily.new(language_family_params)

    respond_to do |format|
      if @language_family.save
        format.html { redirect_to @language_family, notice: 'Language family was successfully created.' }
        format.json { render action: 'show', status: :created, location: @language_family }
      else
        format.html { render action: 'new' }
        format.json { render json: @language_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_families/1
  # PATCH/PUT /language_families/1.json
  def update
    respond_to do |format|
      if @language_family.update(language_family_params)
        format.html { redirect_to @language_family, notice: 'Language family was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @language_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_families/1
  # DELETE /language_families/1.json
  def destroy
    @language_family.destroy
    respond_to do |format|
      format.html { redirect_to language_families_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_family
      @language_family = LanguageFamily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_family_params
      params.require(:language_family).permit(:name)
    end
end
