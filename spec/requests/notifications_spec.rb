require 'rails_helper'

RSpec.describe "Notifications", type: :request do

    describe 'with a valid player' do

        it 'creates notifications' do

            player = Player.create(name: "Bruno Fernandes")
            
            player.notifications.create(message: "Notification number 1")
            player.notifications.create(message: "Notification number 2")


            expect(player.notifications.count).to eq(2)
        end

        it 'deletes a notification' do
            player = Player.create(name: "Bruno Fernandes")
            
            player.notifications.create(message: "Notification number 1")
            player.notifications.create(message: "Notification number 2")

            player.notifications.find_by(id: 2).destroy

            expect(player.notifications.count).to eq(1)
        end

        it 'deletes all notifications' do
            player = Player.create(name: "Bruno Fernandes")
            
            player.notifications.create(message: "Notification number 1")
            player.notifications.create(message: "Notification number 2")

            expect(player.notifications.count).to eq(2)

            player.notifications.destroy_all
            expect(player.notifications.count).to eq(0)
        end
        
    end

    describe 'without a valid player' do

        it ' does not create notifications' do
            
            Notification.create(message: "Notification number 1")
            Notification.create(message: "Notification number 2")
            notifications = Notification.all

            expect(notifications.count).to eq(0)
        end
        
    end
 
end
