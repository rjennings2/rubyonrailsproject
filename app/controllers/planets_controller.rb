class PlanetsController < ApplicationController
  def index
    @planets = Planet.page(params[:page]).per(10)
  end

  def show
    @planet = Planet.find_by(id: params[:id])
    if @planet.nil?
      redirect_to planets_path, alert: "Planet not found."
    end
  end
end
