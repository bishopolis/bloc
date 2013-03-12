class CommentsController < ApplicationController
  def index
  	 @posts = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def new
  	@post = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
     end
  end
  def edit
  	@post = Comment.find(params[:id])
  end

# POST /posts
  # POST /posts.json
  def create
    @comment = Comment.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @comment, notice: 'Post was successfully created.' }
        format.json { render json: @comment, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
   # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
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
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
  
end