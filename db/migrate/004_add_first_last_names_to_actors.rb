class AddFirstLastNamesToActors < ActiveRecord::Migration[5.2]
  def change
    add_column :actors, :first_name, :string
    add_column :actors, :last_name, :string
  end
end