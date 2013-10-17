class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, :limit => 150
      t.string :postal_abbreviation, :limit => 10
      t.integer :country_id

      t.timestamps
    end
    add_index :states, :name, :unique => true
    add_index :states, :postal_abbreviation, :unique => true
  end
end
