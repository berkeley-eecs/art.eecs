class ArtController < ApplicationController
  before_action :set_art, only: %i[ show edit update destroy ]

  # GET /art
  def index
    @art = Art.all
  end

  # GET /art/1
  def show
  end

  # GET /art/new
  def new
    @art = Art.new
  end

  # GET /art/1/edit
  def edit
  end

  # POST /art
  def create
    @art = Art.new(art_params)

    if @art.save
      redirect_to @art, notice: "Art was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /art/1
  def update
    if @art.update(art_params)
      redirect_to @art, notice: "Art was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /art/1
  def destroy
    @art.destroy!
    redirect_to art_index_url, notice: "Art was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art
      @art = Art.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def art_params
      params.require(:art).permit(:title, :description, :artist_name, :last_editor_id, :art_created_date, :created_location, :url, :image, :classification, :is_published, :location_id, :artist_id)
    end
end
