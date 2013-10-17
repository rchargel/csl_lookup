class AddIsoCodesToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :iso2_code, :string, :limit => 2
    add_column :countries, :iso3_code, :string, :limit => 3
  end
end
