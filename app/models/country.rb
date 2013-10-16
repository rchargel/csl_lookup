class Country < ActiveRecord::Base
   validates :name, :presence => true, :uniqueness => true, :length { :maximum => 100 }
   validates :officialName, :length { :maximum => 255}
   validates :iso2Code, :length { :is => 2 }
   validates :iso3Code, :length { :is => 3 }
end
