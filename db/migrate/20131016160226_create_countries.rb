class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, :unique => true, :null => false, :length { :maximum => 100 }
      t.string :officialName, :length { :maximum => 255 }
      t.string :iso2Code, :length { :is => 2 }
      t.string :iso3Code, :length { :is => 3 }

      t.timestamps
    end
  end
end
