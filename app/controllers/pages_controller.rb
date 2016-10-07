class PagesController < ApplicationController
  def index
    redirect_to ranking_players_path
  end

  def not_found
    render 'not_found', :status => 404
  end

  def error
    render 'error', :status => 500
  end
end
