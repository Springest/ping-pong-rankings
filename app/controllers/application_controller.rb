class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_player
    return nil unless session[:player_id]
    @current_player ||= Player.where(id: session[:player_id]).first
  end

  def current_domain
    @current_domain ||= begin
                          current_player.domain if current_player
                          "springest.com"
                        end
  end
  helper_method :current_domain
end
