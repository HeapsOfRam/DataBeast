class Card < ActiveRecord::Base

	validates :name, presence: true, length: { maximum: 50 },
		uniqueness: { case_sensitive: false }
	validates :price, presence: true
	validates :power_level, presence: true
	validates :health_level, presence: true
end
