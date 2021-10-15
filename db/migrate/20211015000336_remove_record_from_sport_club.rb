class RemoveRecordFromSportClub < ActiveRecord::Migration[5.2]
  def change
    remove_column :sport_clubs, :record, :string
  end
end
