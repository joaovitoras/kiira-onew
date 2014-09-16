class DrawingsController < ApplicationController
  before_action :set_drawing, only: [:show]

  # GET /drawings
  # GET /drawings.json
  def index
    @drawings = Drawing.includes(:gallery).all
  end

  # GET /drawings/1
  # GET /drawings/1.json
  def show
  end

  private
    def set_drawing
      @drawing = Drawing.includes(:gallery).friendly.find(params[:id])
    end
end
