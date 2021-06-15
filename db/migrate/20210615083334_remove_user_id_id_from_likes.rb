class RemoveUserIdIdFromLikes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :likes, :user_id_id, null: false, foreign_key: true
  end
end
