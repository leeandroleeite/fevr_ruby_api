class Api::PlayersController < ApplicationController

  before_action :find_player, only: [:show, :update, :destroy]

  # GET /players
  def index
    @players = Player.all
    render json: @players
  end

  # GET /players/:id
  def show  
    if stale?(last_modified: @player.updated_at, public: true)
      render json: @player
    end
  end

  # POST /players
  def create
    @player = Player.new(player_params)

    if @player.save
      render json: @player
    else
      render json: @player, status: :unprocessable_entity
    end
  end

  # PUT or PATCH /players/:id
  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player, status: :unprocessable_entity
    end
  end

  # DELETE /players/:id
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
