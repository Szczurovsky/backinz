class CreateKlans < ActiveRecord::Migration[6.1]
  def change
    create_table :klans do |t|
      t.text :nazwa
      t.string :jarl
      t.string :nastepca
      t.string :stolica
      t.string :polozenie
      t.text :opis
      t.string :show
      t.string :index

      t.timestamps
    end
  end
end
