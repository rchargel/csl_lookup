class Country < ActiveRecord::Base
  has_many :country_languages
  has_many :states
  validates :name, uniqueness: true, presence: true, length: { maximum: 100 }
  validates :official_name, length: { maximum: 255 }
  validates :iso2_code, length: { is: 2 }
  validates :iso3_code, length: { is: 3 }
end
