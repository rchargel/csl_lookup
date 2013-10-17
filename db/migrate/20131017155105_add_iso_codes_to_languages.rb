class AddIsoCodesToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :iso2_code, :string, :limit => 2
    add_column :languages, :iso3_code, :string, :limit => 3
  end
end
