class AddUserIdToProfile < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :user, null: false, foreign_key: true
  end
end
