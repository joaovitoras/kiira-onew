class DrawingsController < ApplicationController
  before_action :set_drawing, only: [:show]
  caches_action :show, :layout => true

  #include => [:gallery]
  # GET /drawings/1
  # GET /drawings/1.json
  def show
  end

  private
    def set_drawing
      @drawing = Drawing.includes(:gallery).friendly.find(params[:id])
    end
end
