class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
    @guide = Guide.find(params[:guide_id])
    @entry.guide_id = @guide.id
    @todos = @guide.neighborhood.todos
  end
  
  def create
    guide_id = params[:guide_id]
    todos = params[:todo_ids]
    
    todos.each do |todo|
      entry = Entry.new({:guide_id => guide_id, :todo_id => todo})
      entry.save
    end
    
    redirect_to guide_url(guide_id)
    
  end
  
end