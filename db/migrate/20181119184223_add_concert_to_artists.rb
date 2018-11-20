class AddConcertToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :artists, :concert, foreign_key: true
  end
end
