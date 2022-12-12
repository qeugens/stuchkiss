class TagsController < ApplicationController
  def index
    tags = Tag.all
    if tags
      render json: {status: "SUCCESS", message: "All tags ready", data: tags}, status: :ok
    else
      render json: tags.errors, status: :bad_request
    end
  end

  def create
    tag = Tag.create(tag_param)
    render json: tag
  end

  def update
    tag = Tag.find(params[:id])
    tag.update(tag_param)
    render json: tag
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    head :no_content, status: :ok
  end

  private
  def tag_param
    params.require(:tag).permit(:title, :ispublic, :user_id)
  end

end
