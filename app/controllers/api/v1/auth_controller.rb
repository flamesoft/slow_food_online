class Api::V1::AuthController < ApiController
  def index
    render json: { message: 'Welcome' }
  end
end
