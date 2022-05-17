class LevelsController < ApplicationController

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

  def create 
    @level = Level.new(hint: params[:hint], word: params[:word])

    if @level.save
        render json: {
           render: @level 
        }
    else
        render json: {
            status: 500,
            error: ['unable to save level']
        }
    end
  end
end
