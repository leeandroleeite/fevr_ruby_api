require 'rails_helper'

RSpec.describe "Players", type: :request do

  describe "with a valid name" do
    it 'creates a new player' do
      player = Player.create(name: "Bruno Fernandes")
      players = Player.all
      expect(players).not_to be_empty
    end
  end

  describe "without a valid name" do
    it 'does not create a new player' do
      player = Player.create()
      players = Player.all
      expect(players).to be_empty
    end
  end


  it 'changes the player attribute'do
    player = Player.create(name: "Bruno Fernandes")

    expect(player.number).to be_nil

    player.number = 18
    expect(player.number).to eq(18)

    player.number = 23
    expect(player.number).to eq(23)
  end


  it 'deletes a player' do
    player = Player.create(name: "Bruno Fernandes")

    players = Player.all
    expect(players.all.count).to eq(1)

    Player.find_by(id: player.id).destroy
    players = Player.all
    expect(players.all.count).to eq(0)
  end

  it 'deletes all players' do
    Player.create(name: "Bruno Fernandes")
    Player.create(name: "Cristiano Ronaldo")

    players = Player.all
    expect(players.all.count).to eq(2)

    Player.destroy_all
    expect(players.all.count).to eq(0)
  end


end
