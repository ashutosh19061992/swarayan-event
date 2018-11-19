class AddVolunteerToMembers < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, :volunteer, foreign_key: true
  end
end
