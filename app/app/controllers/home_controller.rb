class HomeController < ApplicationController
  before_action :authenticate_user!  

  def index
    @posts = Post.all
    @users = User.all 
    @topics = Topic.all  


  end
end
