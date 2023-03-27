class ReportItemsController < ApplicationController
  before_action :set_reportItem, only: %i[ update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    reportItems = ReportItem.all
    if reportitems
      render json: reportItems
    else
      render json: reportItems.errors, status: :bad_request
    end
  end

  def show
    @reportItem = ReportItem.find(params[:id])
    if @reportItem.present?
    render json: @reportItem
    else
      render json: @reportItem.errors, status: :not_found
    end
  end

  def create
     @reportItem = ReportItem.new(reportItem_param.merge(user_id: current_user.id))
    if @reportItem.save
    render json: @reportItem
    else
      render json: @reportItem.errors
  end
  end

  def update
    reportItem = ReportItem.find(params[:id])
    reportItem.update(reportItem_param)
    render json: reportItem
  end

  def destroy
    reportItem = ReportItem.find(params[:id])
    reportItem.destroy
    head :no_content, status: :ok
  end

  private
  def reportItem_param
    params.require(:reportItem).permit(:item_id, :user_id, :number, :reason)
  end
  def set_reportItem
      @reportItem = ReportItem.find(params[:id])
    end

end
