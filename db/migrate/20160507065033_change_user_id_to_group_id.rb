class ChangeUserIdToGroupId < ActiveRecord::Migration[5.0]
  def change
    rename_column :pets, :user_id, :group_id
  end
end
