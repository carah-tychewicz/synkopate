class Api::SessionsController < ApplicationController

  def create
    composer = Composer.find_by(email: params[:email])
    if composer && composer.authenticate(params[:password])
      jwt = JWT.encode(
        {
          composer_id: composer.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      render json: {jwt: jwt, email: composer.email, composer_id: composer.id}, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  helper_method :current_composer

  def authenticate_composer
    unless current_composer
      render json: {}, status: :unauthorized
    end
  end

end
