class AddVolunteerTypeToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :volunteer_type, :string
  end
end
