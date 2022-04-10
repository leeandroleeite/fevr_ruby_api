class PlayersController < ApplicationController

  before_action :find_player, only: [:show, :update, :destroy]

  def index
    @players = Player.all
    render json: @players, only: [:id, :name, :number, :age, :nationality, :position]
  end

  def show  
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
    render json: @player  
  end

  def update
    if @player.update(player_params)
      render json: @player
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy
    render json: {success: true}, status: :no_content
  end

  private

    def find_player
      @player = Player.find(params[:id])
    end
    
    def player_params
      params.require(:player).permit(:name, :number, :nationality, :age, :position)
    end

end
