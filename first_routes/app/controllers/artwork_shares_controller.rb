class ArtworkSharesController < ApplicationController
  before_action :set_artwork_share, only: [:show, :edit, :update, :destroy]

  # GET /artwork_shares
  # GET /artwork_shares.json
  def index
    @artwork_shares = ArtworkShare.all
  end

  # GET /artwork_shares/1
  # GET /artwork_shares/1.json
  def show
  end

  # GET /artwork_shares/new
  def new
    @artwork_share = ArtworkShare.new
  end

  # GET /artwork_shares/1/edit
  def edit
  end

  # POST /artwork_shares
  # POST /artwork_shares.json
  def create
    @artwork_share = ArtworkShare.new(artwork_share_params)

    respond_to do |format|
      if @artwork_share.save
        format.html { redirect_to @artwork_share, notice: 'Artwork share was successfully created.' }
        format.json { render :show, status: :created, location: @artwork_share }
      else
        format.html { render :new }
        format.json { render json: @artwork_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artwork_shares/1
  # PATCH/PUT /artwork_shares/1.json
  def update
    respond_to do |format|
      if @artwork_share.update(artwork_share_params)
        format.html { redirect_to @artwork_share, notice: 'Artwork share was successfully updated.' }
        format.json { render :show, status: :ok, location: @artwork_share }
      else
        format.html { render :edit }
        format.json { render json: @artwork_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artwork_shares/1
  # DELETE /artwork_shares/1.json
  def destroy
    @artwork_share.destroy
    respond_to do |format|
      format.html { redirect_to artwork_shares_url, notice: 'Artwork share was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork_share
      @artwork_share = ArtworkShare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_share_params
      params.fetch(:artwork_share, {})
    end
end
