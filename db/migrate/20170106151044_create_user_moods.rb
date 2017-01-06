class CreateUserMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :user_moods do |t|
      t.references :user, foreign_key: true
      t.references :mood, foreign_key: true
      t.string :feeling

      t.timestamps
    end
  end
end
