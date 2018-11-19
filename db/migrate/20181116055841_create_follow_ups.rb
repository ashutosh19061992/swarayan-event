class CreateFollowUps < ActiveRecord::Migration[5.2]
  def change
    create_table :follow_ups do |t|
      t.references :volunteer, foreign_key: true
      t.references :member, foreign_key: true
      t.references :concert, foreign_key: true
      t.string :response

      t.timestamps
    end
  end
end
