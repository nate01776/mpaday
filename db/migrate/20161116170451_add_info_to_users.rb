class AddInfoToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :first_day, :string, null: false
    add_column :users, :current_streak, :integer, null: false
  end

  def down
    remove_column :users, :first_day, :string
    remove_column :users, :current_streak, :integer
  end
end
