class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :set_q, only: [:index, :search]
  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /spots
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_url, notice: '作成されました'
    else
      render :new
    end
  end

  # PATCH/PUT /spots/1
  def update
    if @post.update(post_params)
      redirect_to posts_url, notice: '更新されました'
    else
      render :edit
    end
  end

  # DELETE /spots/1
  def destroy
    @post.destroy
    redirect_to posts_url, notice: '削除しました'
  end

  def search
    @results = @q.result
  end

  private
  
  def set_q
    @q = Post.ransack(params[:q])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :content, :number, :price, :image)
    end
end
