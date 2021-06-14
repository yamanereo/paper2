class RemoveAuthorFromTitles < ActiveRecord::Migration[6.1]
  def change
    remove_column :titles, :references, :user_id
  end
end
