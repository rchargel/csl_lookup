class Language < ActiveRecord::Base
   belongs_to :language_family
   validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
end
