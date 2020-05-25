class HomeController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]
  def index
    @posts = Post.all
    @users = User.all 
    @topics = Topic.all  
  end
end
