class NotificationsController < ApplicationController
def index
    @notifications = Player.find(params[:player_id]).notifications
    render json: @notifications
end

def create
    @player = Player.find(params[:player_id])
    @notification = @player.notifications.create(notification_params)

    render json: @player.notifications
end

def edit
end

def update
end

def destroy
    @player = Player.find(params[:player_id])
    @notification = @player.notifications.destroy(params[:id])

    render json: @player.notifications
end

def destroy_all
    @player = Player.find(params[:player_id])
    @notification = @player.notifications.destroy_all

    render json: @player.notifications
end

private
    def notification_params
      params.require(:notification).permit(:message)
    end

end
