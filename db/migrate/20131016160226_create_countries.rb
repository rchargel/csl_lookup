class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :officialName
      t.string :iso2Code
      t.string :iso3Code

      t.timestamps
    end
  end
end
