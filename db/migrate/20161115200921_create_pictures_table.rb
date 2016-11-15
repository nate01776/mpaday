class CreatePicturesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :description
      t.integer :day_number, null: false
      t.belongs_to :user, null: false
      t.timestamps
    end
  end
end
