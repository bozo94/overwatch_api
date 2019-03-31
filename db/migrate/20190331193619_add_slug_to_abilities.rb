class AddSlugToAbilities < ActiveRecord::Migration[5.2]
  def change
    add_column :abilities, :slug, :string
    add_index :abilities, :slug, unique: true
  end
end
