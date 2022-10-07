class HeroPowersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_error
  # POST /hero_powers
  def create
    hero_power = HeroPower.create!(hero_power_params)
    render json: hero_power.hero, serializer: HeroPowerSerializer, status: :created
  end

  private

  def hero_power_params
    params.permit(:strength, :power_id, :hero_id)
  end

  def unprocessable_entity_error(invalid)
    render json: { error: "errors: invalid.record.errors.full_messages" }, status: :unprocessable_entity
  end
end
