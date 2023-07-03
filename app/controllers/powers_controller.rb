class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  
  def index
    powers= Power.all
    render json: powers
  end

  # POST /Powers
  def create
     power = find_power
    render json: power, status: :created
  end

  
  def show
    power= find_power
    render json: power
  end

  
  def update
    power = find_power
    power.update(hero_params)
    render json: power
  end

  

  
  def destroy
    power = find_power
    power.destroy
    head :no_content
  end

  private

  def find_power
    Power.find(params[:id])
  end

  def power_params
    params.permit(:name,  :description )
  end

  def render_not_found_response
    render json: { error: "power not found " }, status: :not_found
  end
    


end
