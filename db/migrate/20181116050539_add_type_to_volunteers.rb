class AddTypeToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :type, :integer
  end
end
