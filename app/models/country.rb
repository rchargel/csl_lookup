class Country < ActiveRecord::Base
  has_many :country_languages
  validates :name, uniqueness: true, presence: true, length: { maximum: 100 }
  validates :official_name, length: { maximum: 255 }
end
