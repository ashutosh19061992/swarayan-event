class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.text :address
      t.string :city
      t.string :state
      t.date :dob

      t.timestamps
    end
  end
end
