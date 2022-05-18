class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    drop_table :characters
    create_table :characters do |t|
      t.text :nick
      t.json :statystyki, default:[]
      t.json :klan, default:[]
      t.json :profesja, default:[]
      t.json :umiejetnosci, default:[]
      t.json :przedmioty, default:[]
      t.json :p_fab, default:[]

      t.timestamps
    end
  end
end
