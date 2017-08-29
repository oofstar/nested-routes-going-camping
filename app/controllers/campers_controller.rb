class CampersController < ApplicationController

  def index
    if params.has_key?(:campsite_id)
      @campsite = Campsite.find(params[:campsite_id])
      @title = "Campers bunking in #{@campsite.name}"
      @campers = @campsite.campers
    else
      @title = "All Campers:"
      @campers = Camper.all
    end

  end


end
