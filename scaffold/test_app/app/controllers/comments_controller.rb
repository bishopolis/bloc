class CommentsController < ApplicationController
  def index
  	 @posts = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def new
  	@comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
     end
  end
 

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    if @comment.save
      flash[:success] = "Comment created"
      redirect_to @post
    else
      flash[:error] = "Something went wrong"
      redirect_to @post
    end
  end
  
end
