class AddDetailsToMoods < ActiveRecord::Migration[5.0]
  def change
    add_column :moods, :quote, :string
    add_column :moods, :gif, :string
  end
end
