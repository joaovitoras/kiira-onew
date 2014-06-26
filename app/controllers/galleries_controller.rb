class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show]

  # GET /galleries
  # GET /galleries.json
  def index
    @galleries = Gallery.all
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  end

  private
    def set_gallery
      @gallery = Gallery.friendly.find(params[:id])
    end
end
