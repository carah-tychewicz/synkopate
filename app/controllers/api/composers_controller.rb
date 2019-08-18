class Api::ComposersController < ApplicationController

  def index
    @composers = Composer.all
    render "index.json.jb"
  end

  def create
    @create_composer = Composer.new(
    username: params[:username],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
  )
    if @create_composer.save
      render json: {message: 'Composer created successfully'}, status: :created
    else
      render json: {errors: composer.errors.full_messages}, status: :bad_request
    end
  end

  def show
    composer_id = params["id"]
    @composer = Composer.find_by(id: composer_id)
    render "show.json.jb"
  end

  # def current_composer
  #   @current_composer = Composer.id
  # end



end
