class CreatePostacs < ActiveRecord::Migration[6.1]
  def change
    create_table :postacs do |t|
      t.text :imie
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
