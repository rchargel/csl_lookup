class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, :limit => 100
      t.string :official_name, :limit => 255

      t.timestamps
    end
    add_index :countries, :name, :unique => true
  end
end
