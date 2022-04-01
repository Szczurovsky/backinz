class AddAidToNorgmar < ActiveRecord::Migration[6.1]
  def change
    add_column :norgmars, :aid, :integer
  end
end
