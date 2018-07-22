class AddUserIdToTastings < ActiveRecord::Migration[5.1]
  def change
    add_reference :tastings, :user, foreign_key: true
  end
end
