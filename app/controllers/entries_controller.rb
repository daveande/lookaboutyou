class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
    @guide = Guide.find(params[:guide_id])
    @entry.guide_id = @guide.id
    @todos = Todo.all
  end
  
  def create
    @entry = Entry.new(params[:entries])
  end
  
end