class Api::ComposersController < ApplicationController

  def index
    @composers = Composer.all
    render "index.json.jb"
  end

  def create
    composer = Composer.new(
    username: params[:username],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
  )
    if composer.save
      render json: {message: 'Composer created successfully'}, status: :created
    else
      render json: {errors: composer.errors.full_messages}, status: :bad_request
    end
  end



end
