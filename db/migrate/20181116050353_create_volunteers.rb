class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :phone_no
      t.string :email
      t.date :dob
      t.date :associated_since

      t.timestamps
    end
  end
end
