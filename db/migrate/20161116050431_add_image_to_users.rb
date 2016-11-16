class AddImageToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :pictures, :image, :string, null: false
  end

  def down
    remove_column :pictures, :image, :string
  end
end
