class ApplicationController < ActionController::API

    skip_before_action :verify_authenticity_token, raise: false
    rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed

private

def not_destroyed(e)
    render json: {errors: e.record.errors}, status: :unprocessable_entity
end

end
