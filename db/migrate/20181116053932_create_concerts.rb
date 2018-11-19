class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :concert_name
      t.date :concert_date
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
