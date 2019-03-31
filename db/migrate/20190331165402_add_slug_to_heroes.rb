class AddSlugToHeroes < ActiveRecord::Migration[5.2]
  def change
    add_column :heroes, :slug, :string
    add_index :heroes, :slug, unique: true
  end
end
