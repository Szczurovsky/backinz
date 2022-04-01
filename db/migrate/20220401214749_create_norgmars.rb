class CreateNorgmars < ActiveRecord::Migration[6.1]
  def change
    create_table :norgmars do |t|
      t.text :nazwa
      t.integer :pid
      t.integer :nid
      t.text :opis

      t.timestamps
    end
  end
end
