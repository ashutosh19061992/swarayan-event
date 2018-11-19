class CreateRemunerations < ActiveRecord::Migration[5.2]
  def change
    create_table :remunerations do |t|
      t.references :concert, foreign_key: true
      t.references :artist, foreign_key: true
      t.integer :amount
      t.string :mode_of_payment

      t.timestamps
    end
  end
end
