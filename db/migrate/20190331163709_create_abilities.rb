class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.integer :hero_id
      t.string :name
      t.text :description
      t.boolean :is_ultimate, default: false
    end
  end
end
