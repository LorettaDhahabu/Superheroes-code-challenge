class PowersController < ApplicationController
    # GET /powers
    def index
        powers = Power.all
        render json: powers
    end
end
