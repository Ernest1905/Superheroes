class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_validation_errors
  
    def index
      hero_powers = HeroPower.all
      render json: hero_powers
    end
  
    def create
      hero_power = HeroPower.create!(hero_params)
      render json: hero_power
    end
  
    def show
      hero_power = find_hero_power
      render json: hero_power
    end
  
    def update
      hero_power = find_hero_power
      hero_power.update!(hero_params)
      render json: hero_power
    end
  
    def destroy
      hero_power = find_hero_power
      hero_power.destroy
      head :no_content
    end
  
    private
  
    def find_hero_power
      HeroPower.find(params[:id])
    end
  
    def hero_params
      params.permit(:strength, :power_id, :hero_id)
    end
  
    def render_not_found_response
      render json: { error: "Hero Power not found" }, status: :not_found
    end
  
    def render_validation_errors(exception)
      render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
  end
  