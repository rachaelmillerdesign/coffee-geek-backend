class CreateTastings < ActiveRecord::Migration[5.1]
  def change
    create_table :tastings do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :coffee, index: true, foreign_key: true, null: false
      t.string :date
      t.string :tasting_notes
      t.integer :grams_in
      t.integer :grams_out
      t.time :time
      t.integer :temperature
      t.string :extraction_notes

      t.timestamps
    end
  end
end
