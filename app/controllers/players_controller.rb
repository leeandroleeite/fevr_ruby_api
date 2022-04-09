class PlayersController < ApplicationController
  def index
    @players = Player.all
    render json: @players
  end

  def show  
    @player = Player.find(params[:id])

    if stale?(last_modified: @player.updated_at, public: true)
      render json: @player
    end

  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      render json: @player
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @player = Player.find_by_id([params[:id]])
  end

  def update
    @player = Player.find_by_id([params[:id]])

    if @player.update(player_params)
      render json: @player
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def player_params
      params.require(:player).permit(:name, :number, :nationality, :age, :position)
    end

end
