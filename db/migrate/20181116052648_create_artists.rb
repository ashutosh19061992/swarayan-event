class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.string :phone_no
      t.string :linkedlin_url
      t.string :facebook_url

      t.timestamps
    end
  end
end
