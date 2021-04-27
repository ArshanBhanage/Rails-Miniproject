class AddUserIdToMybooks < ActiveRecord::Migration[6.1]
  def change
    add_column :mybooks, :user_id, :integer
    add_index :mybooks, :user_id
  end
end
