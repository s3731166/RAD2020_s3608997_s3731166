class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  helper_method :current_user

  before_action :authenticate_user!, except: [:show]
  # respond_to :html, :js



def selected

  params.each do |id|
    @posts = Post.where(:post_id => id)
  end
  redirect_to root_path(@posts)

end 


  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order('created_at desc')
    @selected_posts = Post.page(params[:page]).per(25).by_topic(params[:topics])

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @posts = Post.all.order('created_at desc')
    @post.viewCount = @post.viewCount + 1
    @post.save 
    #increments ViewCount
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.author = @current_user.username
    @post.user = @current_user


    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:name, :body, :topic_id, :commentCount,  :viewCount, :author)
    end
     def current_user
      if session[:user_id]
        @current_user ||= User.find(session[:user_id])
      else
        @current_user = nil
      end
    end
end
