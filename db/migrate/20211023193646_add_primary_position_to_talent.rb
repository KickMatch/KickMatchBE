class AddPrimaryPositionToTalent < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :primary_position, :string
  end
end
