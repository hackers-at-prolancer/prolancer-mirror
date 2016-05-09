class LandingPageConfigsController < ApplicationController
  before_action :set_landing_page_config, only: [:edit, :update, :destroy]

  # GET /landing_page_configs
  # GET /landing_page_configs.json
  def index
    @landing_page_configs = LandingPageConfig.all
  end


  # GET /landing_page_configs/new
  def new
    @landing_page_config = LandingPageConfig.new
  end

  # GET /landing_page_configs/1/edit
  def edit
  end


  # POST /landing_page_configs
  # POST /landing_page_configs.json
  def create
    @landing_page_config = LandingPageConfig.new(landing_page_config_params)

    respond_to do |format|
      if @landing_page_config.save
        format.html { redirect_to @landing_page_config, notice: 'Landing page config was successfully created.' }
        format.json { render :show, status: :created, location: @landing_page_config }
      else
        format.html { render :new }
        format.json { render json: @landing_page_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landing_page_configs/1
  # PATCH/PUT /landing_page_configs/1.json
  def update
    respond_to do |format|
      if @landing_page_config.update(landing_page_config_params)
        format.html { redirect_to landing_page_configs_url, notice: 'Landing page config was successfully updated.' }
        format.json { render :show, status: :ok, location: @landing_page_config }
      else
        format.html { render :edit }
        format.json { render json: @landing_page_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landing_page_configs/1
  # DELETE /landing_page_configs/1.json
  def destroy
    @landing_page_config.destroy
    respond_to do |format|
      format.html { redirect_to landing_page_configs_url, notice: 'Landing page config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing_page_config
      @landing_page_config = LandingPageConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landing_page_config_params
      params.require(:landing_page_config).permit(:header, :description, :fa_icon)
    end
end
