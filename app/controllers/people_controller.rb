class PeopleController < ApplicationController
  def index
    @people = Person.all

    if params[:query].present?
      @people = Person.where('name ILIKE ?', "%#{params[:query]}%")
    end

    if params[:planet_id].present?
      @people = @people.where(planet_id: params[:planet_id])
    end
  end

  def show
  end
end
