class GithubController < ApplicationController
  skip_before_filter
  protect_from_forgery :except => :create

  def create
    hash = JSON.parse(params[:payload])
    render :json => hash
  end
end
