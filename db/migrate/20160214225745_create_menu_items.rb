class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :menu, index: true, foreign_key: true
      t.string :name
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
