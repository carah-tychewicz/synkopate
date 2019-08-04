class Api::RepertoiresController < ApplicationController

  def index
    @repertoires = Repertoire.all
    render "index.json.jb"
  end

  def create
    @create_repertoire = Repertoire.new(
    title: params[:title],
    genre: params[:genre],
  )
    if @create_repertoire.save
      render json: {message: 'Repertoire created successfully'}, status: :created
    else
      render json: {errors: @create_repertoire.errors.full_messages}, status: :bad_request
    end
  end

  def show
    repertoire_id = params["id"]
    @repertoire = Repertoire.find_by(id: repertoire_id)
    render "show.json.jb"
  end
end
