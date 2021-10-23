class AddColumnsToTalent < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :zipcode, :integer
    add_column :talents, :email, :string
    add_column :talents, :dominant_foot, :string
    add_column :talents, :goals_made_ls, :integer
    add_column :talents, :vertical_jump, :float
    add_column :talents, :forty_dash, :float
    add_column :talents, :juggling_record, :integer
    add_column :talents, :talents, :string
  end
end
