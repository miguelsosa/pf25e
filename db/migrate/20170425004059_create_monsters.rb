class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :cr
      t.integer :xp
      t.integer :ac
      t.integer :hp
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :wis
      t.integer :cha
      t.text :description

      t.timestamps
    end
  end
end
