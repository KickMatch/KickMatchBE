class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :sport_club, foreign_key: true
      t.references :talent, foreign_key: true

      t.timestamps
    end
  end
end
