class AddArtistToConcerts < ActiveRecord::Migration[5.2]
  def change
    add_reference :concerts, :artist, foreign_key: true
  end
end
