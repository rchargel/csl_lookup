class CountryLanguagesController < ApplicationController
  before_action :set_country_language, only: [:show, :edit, :update, :destroy]

  # GET /country_languages
  # GET /country_languages.json
  def index
    @country_languages = CountryLanguage.all
  end

  # GET /country_languages/1
  # GET /country_languages/1.json
  def show
  end

  # GET /country_languages/new
  def new
    @country_language = CountryLanguage.new
  end

  # GET /country_languages/1/edit
  def edit
  end

  # POST /country_languages
  # POST /country_languages.json
  def create
    @country_language = CountryLanguage.new(country_language_params)

    respond_to do |format|
      if @country_language.save
        format.html { redirect_to @country_language, notice: 'Country language was successfully created.' }
        format.json { render action: 'show', status: :created, location: @country_language }
      else
        format.html { render action: 'new' }
        format.json { render json: @country_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_languages/1
  # PATCH/PUT /country_languages/1.json
  def update
    respond_to do |format|
      if @country_language.update(country_language_params)
        format.html { redirect_to @country_language, notice: 'Country language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @country_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_languages/1
  # DELETE /country_languages/1.json
  def destroy
    @country_language.destroy
    respond_to do |format|
      format.html { redirect_to country_languages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_language
      @country_language = CountryLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_language_params
      params.require(:country_language).permit(:country_id, :language_id)
    end
end
