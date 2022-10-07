class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :power_not_found
    # GET /powers
    def index
        powers = Power.all
        render json: powers
    end

    #  GET /powers/:id
    def show
        power = Power.find(params[:id])
        render json: power
    end


    private

    def power_not_found
        render json: {error: "Power not found"}, status: :not_found
    end
end
