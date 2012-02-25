class GardenController < ApplicationController
  def create
        @garden = Garden.create(params[:post])
        @garden.save
  end

  def edit
        @garden = Garden.get(:id)
        @garden.update(params[:post]);
  end

  def view
       @garden = Garden.get(:id)
  end

  def destroy
       @garden = Garden.get(:id)
  end

end
