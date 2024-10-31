class PeopleController < ApplicationController
  def index
    @people = Person.page(params[:page]).per(10)
    if params[:query].present?
      @people = @people.where('name ILIKE ?', "%#{params[:query]}%")
    end

    if params[:planet_id].present?
      @people = @people.where(planet_id: params[:planet_id])
    end
  end

  def show
    @person = Person.find(params[:id])
  end
end
