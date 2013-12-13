class Card < ActiveRecord::Base

	validates :name, presence: true, length: { maximum: 50 },
		uniqueness: { case_sensitive: false }
	validates :price, presence: true
	validates :power_level, presence: true
	validates :health_level, presence: true

	def self.search(search)
		if search
			where(['name LIKE ? OR price LIKE ? OR power_level LIKE ? OR health_level LIKE ?', 
				"%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
		else
			find(:all)
		end
	end
end
