class AddNameToMoods < ActiveRecord::Migration[5.0]
  def change
    add_column :moods, :name, :string
  end
end
