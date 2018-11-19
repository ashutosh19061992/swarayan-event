class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.references :member, foreign_key: true
      t.references :concert, foreign_key: true
      t.integer :head_count

      t.timestamps
    end
  end
end
