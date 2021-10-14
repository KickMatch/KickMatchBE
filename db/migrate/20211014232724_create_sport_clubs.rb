class CreateSportClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :sport_clubs do |t|
      t.string :name
      t.string :location
      t.string :league
      t.string :record

      t.timestamps
    end
  end
end
