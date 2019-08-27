class Api::UpbeatsController < ApplicationController
  def index
    # @upbeats = Upbeat.all
    # @upbeats = Upbeat.where(composer_id: current_composer.id)
    @upbeats = current_composer.upbeats
    if params["all"]
      @upbeats = Upbeat.all
    end
    render "index.json.jb"
  end

  def create
    @create_upbeat = Upbeat.new(
      title: params["title"],
      album: params["album"],
      duration: params["duration"],
      genre: params["genre"],
      url: params["url"],
      composer_id: current_composer.id
    )
    if @create_upbeat.save
      render "create.json.jb"
    else render json: { errors: @create_upbeat.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    upbeat_id = params["id"]
    @upbeat = Upbeat.find_by(id: upbeat_id)
    render "show.json.jb"
  end

end
