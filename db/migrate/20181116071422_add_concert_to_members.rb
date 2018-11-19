class AddConcertToMembers < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, :concert, foreign_key: true
  end
end
