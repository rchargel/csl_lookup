class State < ActiveRecord::Base
  belongs_to :country
  validates :name, uniqueness: true, presence: true, length: { maximum: 150 }
  validates :name, uniqueness: true, presence: true, length: { maximum: 10 }
end
