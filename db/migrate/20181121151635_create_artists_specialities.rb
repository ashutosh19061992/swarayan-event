class CreateArtistsSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :artists_specialities do |t|
      t.references :artist, foreign_key: true
      t.references :speciality, foreign_key: true
    end
  end
end
