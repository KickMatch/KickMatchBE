class AddAwardsToTalent < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :awards, :string
  end
end
