class StateOrProvince < ActiveRecord::Base
   belongs_to :country
   validates :name, uniqueness: true, presence: true, length: { maximum: 150 }
   validates :postalAbbreviation, uniqueness: true, presence: true, length: { maximum: 6 }
end
