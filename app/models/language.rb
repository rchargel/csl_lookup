class Language < ActiveRecord::Base
   belongs_to :language_family
   has_many :country_languages
   validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
   validates :iso2_code, length: { is: 2 }
   validates :iso3_code, length: { is: 3 }
end
