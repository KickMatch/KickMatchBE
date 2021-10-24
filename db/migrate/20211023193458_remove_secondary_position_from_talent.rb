class RemoveSecondaryPositionFromTalent < ActiveRecord::Migration[5.2]
  def change
    remove_column :talents, :secondary_position, :integer
  end
end
