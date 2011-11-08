class GuidesController < ApplicationController
  
def new
  @guide = Guide.new
  @neighborhood = Neighborhood.find(params[:neighborhood_id])
  @guide.neighborhood_id = @neighborhood.id
  
end

def create
  @guide = Guide.new(params[:guide])
  
  if @guide.save 
    flash[:success] = "Your guide has been saved! Now add 3 Things to Learn, 2 Bars, and 1 Cafe."
    redirect_to new_entry_url(:guide_id => @guide.id)
  else
    flash[:notice] = "There were problems saving your guide. Please try again."
    redirect_to new_guide_url
  end
  
end

def show
  @guide = Guide.find(params[:id])

end

def index
  @guide = Guide.all
end
  
end