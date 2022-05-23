class AddPrzedmiotkiToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :przedmiotki, :json
  end
end
