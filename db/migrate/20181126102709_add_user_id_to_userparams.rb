class AddUserIdToUserparams < ActiveRecord::Migration[5.1]
  def change
    add_column :userparams, :user_id, :integer
  end
end
