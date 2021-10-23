class AddSecondaryPositionToTalent < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :secondary_position, :string
  end
end
