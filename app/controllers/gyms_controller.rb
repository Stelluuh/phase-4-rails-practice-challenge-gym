class GymsController < ApplicationController

    def show
        gym = find_gym
        render json: gym, status: :not_found
    end

    def destroy
        gym = find_gym
        gym.destroy
        head :no_content
    end


        private

    def find_gym
        Gym.find(params[:id])
    end

end
