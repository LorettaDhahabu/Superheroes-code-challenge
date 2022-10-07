class HerosController < ApplicationController
    #GET /heroes
    def index
        heroes = Hero.all
        render json: heroes, status: :ok
    end
end
