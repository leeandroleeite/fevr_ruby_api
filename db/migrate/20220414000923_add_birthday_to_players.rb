class AddBirthdayToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column(:players, :birthdate, :string)
  end
end
