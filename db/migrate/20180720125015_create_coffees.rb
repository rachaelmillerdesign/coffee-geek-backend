class CreateCoffees < ActiveRecord::Migration[5.1]
  def change
    create_table :coffees do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.date :date
      t.string :roaster
      t.string :blend
      t.integer :days_post_roast
      t.boolean :espresso
      t.integer :rating
      t.boolean :favorite
      t.string :tasting_notes
      t.integer :grams_in
      t.integer :grams_out
      t.time :time
      t.integer :temperature
      t.integer :brew_ratio
      t.integer :extraction_notes
      t.timestamps
    end
  end
end
