class Language < ActiveRecord::Base
   belongs_to :language_family
   has_many :country_languages
   validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
end
