class AddIndexesToIsoCodes < ActiveRecord::Migration
  def change
    add_index :languages, :iso2_code
    add_index :languages, :iso3_code
    add_index :countries, :iso2_code
    add_index :countries, :iso3_code
  end
end
