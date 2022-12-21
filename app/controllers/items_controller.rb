class ItemsController < ApplicationController
  def index
    items = Item.all
    if items
      render json: items
    else
      render json: items.errors, status: :bad_request
    end
  end

  def create
    item = Item.create(item_param)
    render json: item
  end

  def update
    item = Item.find(params[:id])
    item.update(item_param)
    render json: item
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    head :no_content, status: :ok
  end

  private
  def item_param
    params.require(:item).permit(:geotag, :note, :date, :image, :collection_id, :user_id)
  end

end
