class UsersController < ApplicationController
   def index
	@users = User.all
  end

  def find_user
  	@user = User.find(params[:id])
  end
  
  def new
  	@user = User.new
  end

  def show
  	  @user = User.find(params[:id])
  end
  
 
   def create
    @user = User.new(params[:post])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	if current_user.id == @user.id || current_user.super_user == true
			@user.destroy
			redirect_to root_path
			flash[:success] = "User has been deleted"
	else
			redirect_to '/users'	
			flash[:error] = "You can't delete someone else" 
	end
  end
end
