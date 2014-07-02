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


  def send_mail
    name = params[:name]
    email = params[:email]
    message = params[:comments]
    UserMailer.contact_me(name, email, message).deliver
    flash[:success] = "Email enviado com sucesso! Obrigado!"
    redirect_to root_path
  end

  private
    def set_gallery
      @gallery = Gallery.friendly.find(params[:id])
    end
end
