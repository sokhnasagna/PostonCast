class GroupePodcastsController < ApplicationController
  before_action :set_groupe_podcast, only: [:show, :edit, :update, :destroy]

  # GET /groupe_podcasts
  # GET /groupe_podcasts.json
  def index
    @groupe_podcasts = GroupePodcast.all
  end

  # GET /groupe_podcasts/1
  # GET /groupe_podcasts/1.json
  def show
  end

  # GET /groupe_podcasts/new
  def new
    @groupe_podcast = GroupePodcast.new
  end

  # GET /groupe_podcasts/1/edit
  def edit
  end

  # POST /groupe_podcasts
  # POST /groupe_podcasts.json
  def create
    @groupe_podcast = GroupePodcast.new(groupe_podcast_params)

    respond_to do |format|
      if @groupe_podcast.save
        format.html { redirect_to @groupe_podcast, notice: 'Groupe podcast was successfully created.' }
        format.json { render :show, status: :created, location: @groupe_podcast }
      else
        format.html { render :new }
        format.json { render json: @groupe_podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groupe_podcasts/1
  # PATCH/PUT /groupe_podcasts/1.json
  def update
    respond_to do |format|
      if @groupe_podcast.update(groupe_podcast_params)
        format.html { redirect_to @groupe_podcast, notice: 'Groupe podcast was successfully updated.' }
        format.json { render :show, status: :ok, location: @groupe_podcast }
      else
        format.html { render :edit }
        format.json { render json: @groupe_podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groupe_podcasts/1
  # DELETE /groupe_podcasts/1.json
  def destroy
    @groupe_podcast.destroy
    respond_to do |format|
      format.html { redirect_to groupe_podcasts_url, notice: 'Groupe podcast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groupe_podcast
      @groupe_podcast = GroupePodcast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groupe_podcast_params
      params.require(:groupe_podcast).permit(:id_group, :dateCreation, :libelle, :image)
    end
end
