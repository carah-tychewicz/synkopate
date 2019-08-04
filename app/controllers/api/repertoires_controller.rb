class Api::RepertoiresController < ApplicationController
  before_action :authenticate_composer

  def index
    # @repertoires = Repertoire.all
    @repertoires = current_composer.repertoires
    render "index.json.jb"
  end

  def create
    @create_repertoire = Repertoire.new(
    title: params[:title],
    genre: params[:genre],
    composer_id: current_composer.id
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
