class CreateTastings < ActiveRecord::Migration[5.1]
  def change
    create_table :tastings do |t|
      t.string :user
      t.string :date
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
      t.string :extraction_notes

      t.timestamps
    end
  end
end
