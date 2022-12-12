class FavouritesController < ApplicationController
  def index
    favourites = Favourite.all
    if favourites
      render json: {status: "SUCCESS", message: "All favourites ready", data: favourites}, status: :ok
    else
      render json: favourites.errors, status: :bad_request
    end
  end

  def create
    favourite = Favourite.create(favourite_param)
    render json: favourite
  end

  def update
    favourite = Favourite.find(params[:id])
    favourite.update(favourite_param)
    render json: favourite
  end

  def destroy
    favourite = Favourite.find(params[:id])
    favourite.destroy
    head :no_content, status: :ok
  end

  private
  def favourite_param
    params.require(:favourite).permit(:user_id, :item_id)
  end

end
