class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[ update destroy ]
  # before_action :authenticate_user!, except: [:index]
  def index
    collections = Collection.all
    if collections
      render json: {status: "SUCCESS", message: "All collections ready", data: collections}, status: :ok
    else
      render json: collections.errors, status: :bad_request
    end
  end


  

  def show
    @collection = Collection.find(params[:id])
    if @collection.present?
    render json: @collection
    else
      render json: @collection.errors, status: :not_found
    end
  end

  def create
    @collection = Collection.new(collection_param.merge(user_id: current_user.id))
    if @collection.save
    render json: @collection
    else
      render json: @collection.errors
    end
  end

  def update
    collection = Collection.find(params[:id])
    collection.update(collection_param)
    render json: collection
  end

  def destroy
    collection = Collection.find(params[:id])
    collection.destroy
    head :no_content, status: :ok
  end

  private
  def collection_param
    params.require(:collection).permit(:title, :description, :cover, :user_id, :blocked)
  end
  def set_collection
      @collection = Collection.find(params[:id])
    end

end
