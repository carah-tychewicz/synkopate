class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_composer
    auth_headers = request.headers['Authorization']
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: 'HS256' }
        )
        Composer.find_by(id: decoded_token[0]["composer_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_composer

  def authenticate_composer
    unless current_composer
      render json: {}, status: :unauthorized
    end
  end
end

