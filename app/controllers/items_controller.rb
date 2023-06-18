class ItemsController < ApplicationController
  before_action :set_item, only: %i[ update destroy ]
  # before_action :authenticate_user!, except: [:index, :show]
  def index
    items = Item.all
    if items
      render json: {status: "SUCCESS", message: "All items ready", data: items}, status: :ok
    else
      render json: items.errors, status: :bad_request
    end
  end

  

  def show
    @item = Item.find(params[:id])
    if @item.present?
    render json: @item
    else
      render json: @item.errors, status: :not_found
    end
  end

  def create
     @item = Item.new(item_param.merge(user_id: current_user.id))
    if @item.save
    render json: @item
    else
      render json: @item.errors
  end
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
    params.require(:item).permit(:geotag, :note, :date, :image, :collection_id, :user_id, :blocked)
  end
  def set_item
      @item = Item.find(params[:id])
    end

end
