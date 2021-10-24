class CreateTalents < ActiveRecord::Migration[5.2]
  def change
    create_table :talents do |t|
      t.string :name
      t.integer :age
      t.string :height
      t.integer :weight
      t.string :primary_position
      t.string :secondary_position

      t.timestamps
    end
  end
end
