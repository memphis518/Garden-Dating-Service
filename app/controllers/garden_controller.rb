class GardenController < ApplicationController
  def create
        @garden = Garden.create(params[:post])
        @garden.save
  end

  def edit
        @garden = Garden.get(:id)
        @garden.update(params[:post]);
  end

  def index
       distance = 10
       location = [params[:long].to_f, params[:lat].to_f] 
       @gardens = Garden.near(:location => location )
       respond_to do |format|
         format.html # index.html.erb
         format.xml  { render :xml => @gardens }
       end      
  end

  def destroy
       @garden = Garden.get(:id)
  end

end
