class AddColumnsToSportClub < ActiveRecord::Migration[5.2]
  def change
    add_column :sport_clubs, :zipcode, :integer
    add_column :sport_clubs, :email, :string
    add_column :sport_clubs, :phone, :string
    add_column :sport_clubs, :tournaments, :string
    add_column :sport_clubs, :coach_resume, :string
    add_column :sport_clubs, :currently_looking, :string
  end
end
