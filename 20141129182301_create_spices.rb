class CreateSpices < ActiveRecord::Migration
  def change
    create_table :spices do |t|
      t.string :spicename
      t.integer :quantity
      t.string :scale
      t.string :supplier
      t.boolean :reorder

      t.timestamps
    end
  end
end
