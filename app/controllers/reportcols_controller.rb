class ReportcolsController < ApplicationController
    # before_action :set_collection, only: %i[ update destroy ]
    # before_action :authenticate_user!, except: [:index]
    def index
      reportcols = Reportcol.includes(:collection, :user).all
      if reportcols
        render json: { status: "SUCCESS", message: "All reportcols ready", data: reportcols.as_json(include: [:collection, :user]) }, status: :ok
      else
        render json: reportcols.errors, status: :bad_request
      end
    end
  
    def create
      @reportcol = Reportcol.new(reportcol_param.merge(user_id: current_user.id))
      if @reportcol.save
      render json: @reportcol
      else
        render json: @reportcol.errors
      end
    end
  
    def update
      reportcol = Reportcol.find(params[:id])
            if reportcol.update(reportcol_param)
      render json: reportcol
            else
                render json: reportcol.errors, status: :unprocessable_entity
            end
          end
  
    def destroy
      reportcol = Reportcol.find(params[:id])
      reportcol.destroy
      head :no_content, status: :ok
    end
  
    private
    def reportcol_param
      params.require(:reportcol).permit(:number, :reason, :user_id, :collection_id, :object, :status)
    end
    def set_reportcol
        @reportcol = Reportcol.find(params[:id])
      end
  
  end
  
