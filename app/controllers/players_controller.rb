class PlayersController < ApplicationController
  def show
    @player = Player.for_domain(current_domain).includes([:games, :teams, :rating_histories]).find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      redirect_to @player
    else
      render 'save_fail'
    end
  end

  def rating_history
    @players = Player.for_domain(current_domain)
  end

  def point_potential
    @players = Player.for_domain(current_domain)
  end

  def destroy
    Player.delete(params['id'])
    redirect_to new_player_path
  end

  def ranking
    @players = Player.for_domain(current_domain)
  end

  private

  def player_params
    params.require(:player).permit(:name, :rating)
  end
end
