class AddVideoUrlToTalent < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :video_url, :string
  end
end
