class LanguageFamily < ActiveRecord::Base
   has_many :languages
   validates :name, presence: true, uniqueness: true, length: {maximum: 50}
end
