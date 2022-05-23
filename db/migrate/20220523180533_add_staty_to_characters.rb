class AddStatyToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :staty, :text
  end
end
