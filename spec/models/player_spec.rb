require 'rails_helper'

RSpec.describe Player, type: :model do

  it 'has a name' do
    player = Player.create(name: "Bruno Fernandes")
    expect(player.name).to eq("Bruno Fernandes")
  end


  it 'has notifications' do
    player = Player.create(name: "Bruno Fernandes")
    player.notifications.create(message: "Hello")
    expect(player.notifications).not_to be_empty
  end

  it 'does not have notifications' do
    player = Player.create(name: "Bruno Fernandes")
    expect(player.notifications).to be_empty  
  end

end
