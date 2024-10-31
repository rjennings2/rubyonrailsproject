class PlanetsController < ApplicationController
  def index
  end

  def show
    @planet = Planet.find_by(id: params[:id])
    if @planet.nil?
      redirect_to planets_path, alert: "Planet not found."
    end
  end
  def rails
  end

  def generate
  end

  def controller
  end

  def Starships
  end

  def index
  end

  def show
  end
end
