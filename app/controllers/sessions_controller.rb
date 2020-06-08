class SessionsController < ApplicationController
  def new
    redirect_to root_path if user_signed_in?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    
    if user && user.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy 
    sign_out
    flash[:success] = 'Success logout'
    redirect_to signin_path

  end

end
