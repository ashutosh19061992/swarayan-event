class AddStatusToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :status, :integer
  end
end
