class TagselectedsController < ApplicationController
  def index
    tagselecteds = Tagselected.includes(:tag, :item).all
    if tagselecteds
      render json: {status: "SUCCESS", message: "All tagselecteds ready", data: tagselecteds.as_json(include: [:tag, :item])}, status: :ok
    else
      render json: tagselecteds.errors, status: :bad_request
    end
  end

  def create
    tagselected = Tagselected.create(tagselected_param)
    render json: tagselected
  end

  def update
    tagselected = Tagselected.find(params[:id])
    tagselected.update(tagselected_param)
    render json: tagselected
  end

  def destroy
    tagselected = Tagselected.find(params[:id])
    tagselected.destroy
    head :no_content, status: :ok
  end

  private
  def tagselected_param
    params.require(:tagselected).permit(:tag_id, :item_id)
  end

end
