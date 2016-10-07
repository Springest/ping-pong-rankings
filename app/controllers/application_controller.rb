class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_player
    return nil unless session[:player_id]
    @current_player ||= Player.where(id: session[:player_id]).first
  end
end
