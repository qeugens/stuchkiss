class UsersController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show, :following, :followed, :liked]
  
    def index
      @users = User.all
  
      render json: @users
    end
  
    def show
      @user = User.find_by_id(params[:id])
      render json: @user
    end
  
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      render json: {message: 'User deleted'}
    end
  
    def follow
      @user = User.find(params[:id])
      current_user.followees << @user
      render json: {message: 'User is followed by you!'}
      # redirect_back(fallback_location: user_path(@user))
    end
  
    def unfollow
      @user = User.find(params[:id])
      current_user.followed_users.find_by(followee_id: @user.id).destroy
      render json: {message: 'User is unfollowed by you!'}
      # redirect_back(fallback_location: user_path(@user))
    end
  
    def following
      @user = User.find(params[:id])
      if @user
        @follow = @user.followed_users
        @following = @user.followees.all
        render json: @following
      end
    end
  
  
    def liked
      @user = User.find(params[:id])
      if @user
        @liked = @user.liked_soundcards
        render json: @liked
      end
  
    end
  
    def following
      @user = User.find(params[:id])
      if @user
        @follow = @user.followed_users
        @following = @user.followees.all
        render json: @following
      end
    end
  
    def followed
      @user = User.find(params[:id])
      if @user
        @following = @user.followers.all
        render json: @following
      end
    end

    def current
      if current_user
        render json: current_user
        else
          render json: {message: "You are not logged"} 
      end

    end

  
    def update_info
      @user = User.find(params[:id])
  
      if @user.update(user_params)
        render json: {message:'The user info successfully updated'}
      else
        render json: {message:'Failed'}
      end
    end
  
    def user_params
      params.require(:user).permit(:name, :avatar)
    end
  
  end