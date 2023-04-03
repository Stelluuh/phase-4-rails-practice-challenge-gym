class ApplicationController < ActionController::API
 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    private

    def render_not_found_response invalid
        render json: {error: "#{invalid.model} not found"}
    end
end
