class AddStatystykiToKlans < ActiveRecord::Migration[6.1]
  def change
    add_column :klans, :statystyki, :json, default:[]
  end
end
