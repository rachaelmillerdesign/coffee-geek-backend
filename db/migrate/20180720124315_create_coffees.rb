class CreateCoffees < ActiveRecord::Migration[5.1]
  def change
    create_table :coffees do |t|
      t.string :blend, null: false
      t.string :roaster, null: false
      t.boolean :favorite
      t.integer :rating
      t.integer :days_post_roast
      t.boolean :espresso

      t.timestamps
    end
  end
end
