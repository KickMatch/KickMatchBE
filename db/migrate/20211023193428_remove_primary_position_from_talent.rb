class RemovePrimaryPositionFromTalent < ActiveRecord::Migration[5.2]
  def change
    remove_column :talents, :primary_position, :integer
  end
end
