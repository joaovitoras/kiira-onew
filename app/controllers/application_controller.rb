class ApplicationController < ActionController::Base
  helper_method :hero_info
  layout 'superhero'
  protect_from_forgery with: :exception

  protected 
  def hero_info
  	"This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information"
  end
end
