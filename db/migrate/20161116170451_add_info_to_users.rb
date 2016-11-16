class AddInfoToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :first_day, :string
    add_column :users, :current_streak, :integer
  end

  def down
    remove_column :users, :first_day, :string
    remove_column :users, :current_streak, :integer
  end
end
