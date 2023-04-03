class MembershipsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    def index #Not required but wanted to add to see layout of each membership
        render json: Membership.all, status: :ok
    end
    
    def create
        new_membership = Membership.create!(membership_params)
        render json: new_membership, status: :created
    end

    private

    def membership_params
        params.permit(:charge, :gym_id, :client_id)
    end

    def render_unprocessable_entity_response invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
