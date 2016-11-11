class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render :json => @animals.as_json(methods: :move)
  end

  def show
    @animal = Animal.find(params[:id])
    render :json => @animal.as_json(methods: :move)
  end

  def create
    animal = Animal.create(params.require(:animal).permit([:name, :legs]))
    render :json => animal
  end

  #PUT api/animals/7
  def update
    animal = Animal.find(params[:id])
    if animal.update_attributes(animal_params)
      render :json => animal
    else
      render :json => {status: :update_failed}
    end
  end

  def destroy
    animal = Animal.find(params[:id])
    if animal.destroy! 
      render :json => { status: :success}
    else
      render :json => { status: :delete_failed}
    end
  end

  private
  def animal_params
    params.require(:animal).permit([:name, :legs])
  end
end