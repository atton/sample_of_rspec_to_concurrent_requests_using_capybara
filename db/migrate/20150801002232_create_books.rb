class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :isbn
      t.integer :price

      t.timestamps null: false
    end
  end
end
