class AddUserIdToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :user_id, :integer
    add_index :characters, :user_id
  end
end
