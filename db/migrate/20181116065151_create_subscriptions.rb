class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.references :member, foreign_key: true
      t.references :product, foreign_key: true
      t.date :subscribed_at
      t.integer :duration
      t.string :keyword

      t.timestamps
    end
  end
end
