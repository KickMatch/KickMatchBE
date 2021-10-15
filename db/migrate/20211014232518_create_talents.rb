class CreateTalents < ActiveRecord::Migration[5.2]
  def change
    create_table :talents do |t|
      t.string :name
      t.integer :age
      t.string :height
      t.integer :weight
      t.integer :primary_position
      t.integer :secondary_position

      t.timestamps
    end
  end
end
