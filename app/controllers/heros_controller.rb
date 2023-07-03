class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  
  def index
    heros= Heros.all
    render json: heros
  end

  # POST /heros
  def create
    hero = hero.create(hero_params)
    render json: hero, status: :created
  end

  
  def show
    hero= find_hero
    render json: hero
  end

  
  def update
    hero = find_hero
    hero.update(hero_params)
    render json: hero
  end

  

  
  def destroy
    hero = find_hero
    hero.destroy
    head :no_content
  end

  private

  def find_hero
    Hero.find(params[:id])
  end

  def hero_params
    params.permit(:name,  :supername )
  end

  def render_not_found_response
    render json: { error: "Hero Not found " }, status: :not_found
  end
    
end
