class SessionsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]


  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Phone or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
  def defined_topics do |i|
    @defined_topics = Topic.where(:id = i)
  end
end