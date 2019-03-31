class AddSlugToHeros < ActiveRecord::Migration[5.2]
  def change
    add_column :heros, :slug, :string
    add_index :heros, :slug, unique: true
  end
end
