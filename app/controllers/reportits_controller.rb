class ReportitsController < ApplicationController
  before_action :set_collection, only: %i[ update destroy ]
  before_action :authenticate_user!, except: [:index]
  def index
    reportits = Reportit.all
    if reportits
      render json: {status: "SUCCESS", message: "All collections ready", data: reportits}, status: :ok
    else
      render json: reportits.errors, status: :bad_request
    end
  end

  def create
    @reportit = Reportit.new(reportit_param.merge(user_id: current_user.id))
    if @reportit.save
    render json: @reportit
    else
      render json: @reportit.errors
    end
  end

  def update
    reportit = Reportit.find(params[:id])
    reportit.update(reportit_param)
    render json: reportit
  end

  def destroy
    reportit = Reportit.find(params[:id])
    reportit.destroy
    head :no_content, status: :ok
  end

  private
  def reportit_param
    params.require(:reportit).permit(:number, :reason, :user_id, :item_id)
  end
  def set_reportit
      @reportit = Reportit.find(params[:id])
    end

end
