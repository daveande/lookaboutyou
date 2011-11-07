class GuidesController < ApplicationController
  
def new
  @guide = Guide.new
  @neighborhood = Neighborhood.find(params[:neighborhood_id])
  @guide.neighborhood_id = @neighborhood.id
end
  
end