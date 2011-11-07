class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Your account was saved. Welcome to LookAboutYou!"
      redirect_to user_url(@user)
    else
      render action: "new"
    end
  
  end
  
  def show
    @user = User.find_by_id(session[:user_id])
  end

end