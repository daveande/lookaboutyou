class GuidesController < ApplicationController

before_filter :require_user, :except => :index   

def new
  @guide = Guide.new
  @neighborhood = Neighborhood.find(params[:neighborhood_id])
  @guide.neighborhood_id = @neighborhood.id
end

def create
  @guide = Guide.new(params[:guide])
  @guide.todo_ids = params[:todo_ids]
  
  if @guide.save    
    flash[:success] = "Your guide has been saved! Now add 3 Things to Learn, 2 Bars, and 1 Cafe."
    redirect_to guide_url(@guide.id)
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

def destroy
  @guide = Guide.find(params[:id])
  @guide.destroy
  flash[:notice] = "Your guide has been deleted."
  redirect_to neighborhoods_url
end

end
