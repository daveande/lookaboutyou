class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user.save && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "You're signed in!"
      redirect_to user_url(session[:user_id])
    else
      flash[:notice] = "Oops. Try again."
      render :new
    end
  end

  def destroy
    reset_session
    flash[:notice] = "You have now signed out."
    redirect_to neighborhoods_url
  end

end
