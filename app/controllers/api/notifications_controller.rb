class Api::NotificationsController < ApplicationController

    before_action :find_player, only: [:create, :destroy, :destroy_all]

def index
    @notifications = Player.find(params[:player_id]).notifications
    render json: @notifications
end

def create
    @notification = @player.notifications.new(notification_params)

    if @notification.save
        render json: @notification, status: :created
    else
        render json: @notification.errors, status: :unprocessable_entity
    end
end

def destroy
    @notification = @player.notifications.destroy(params[:id])
    render json: {success: true}, status: :no_content
end

def destroy_all
    @notification = @player.notifications.destroy_all

    render json: @player.notifications
end

private

    def find_player
        @player = Player.find(params[:player_id])
    end

    def notification_params
      params.require(:notification).permit(:message)
    end

end
