class CollectionsController < ApplicationController
  def index
    collections = Collection.all
    if collections
      render json: {status: "SUCCESS", message: "All collections ready", data: collections}, status: :ok
    else
      render json: collections.errors, status: :bad_request
    end
  end

  def create
    collection = Collection.create(collection_param)
    render json: collection
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
    params.require(:collection).permit(:title, :description, :user_id, :cover)
  end

end
