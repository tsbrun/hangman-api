class ApplicationController < ActionController::Base

  def index 
    @levels = Level.all 
    if @levels 
      render json: {
        levels: @levels 
      }
    else
      render json: {
        status: 500, 
        errors: ['levels not found']
      }
    end
  end

  def show 
    @level = Level.find(params[:id])
    if @level 
      render json: {
        render: @level 
      }
    else
      render json: {
        status: 500,
        errors: ['level not found']
      }
    end
  end
  
end
