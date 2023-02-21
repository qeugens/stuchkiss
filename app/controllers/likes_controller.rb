class LikesController < ApplicationController
  def index
    likes = Like.all
    if likes
      render json: {status: "SUCCESS", message: "All likes ready", data: likes}, status: :ok
    else
      render json: likes.errors, status: :bad_request
    end
  end

  def create
    like = Like.create(like_param)
    render json: like
  end

  def update
    like = Like.find(params[:id])
    like.update(like_param)
    render json: like
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    head :no_content, status: :ok
  end

  private
  def like_param
    params.require(:like).permit(:item_id, :user_id)
  end

end
