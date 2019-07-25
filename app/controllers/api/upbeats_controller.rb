class Api::UpbeatsController < ApplicationController
  def create
    @create_upbeat = Upbeat.new(
      title: params["title"],
      album: params["album"],
      duration: params["duration"].to_i,
      genre: params["genre"])
      

    if @create_upbeat.save
      render "create.json.jb"
    else render json: { errors: @create_upbeat.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
