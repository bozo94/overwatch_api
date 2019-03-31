class CreateHeroes < ActiveRecord::Migration[5.2]
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :real_name
      t.string :health
      t.string :armour
      t.string :shield
    end
  end
end
