class NotificationsController < ApplicationController
def index
end

def show
end

def create
    @player = Player.find(params[:id])
    @notification = @player.notifications.create(notification_params)
    redirect_to player_path(@player)
end

def edit
end

def update
end

def destroy
end

private
    def comment_params
      params.require(:notification).permit(:message)
    end

end
