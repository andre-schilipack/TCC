class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.references :place, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
