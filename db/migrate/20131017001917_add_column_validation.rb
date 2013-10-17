class AddColumnValidation < ActiveRecord::Migration
  def change
    change_column :languages, :name, :string, :limit => 100
    change_column :language_families, :name, :string, :limit => 50
    add_index :languages, :name, :unique => true
    add_index :language_families, :name, :unique => true
  end
end
