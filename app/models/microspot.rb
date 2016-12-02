class Microspot < ApplicationRecord
	 has_attached_file :image, styles: { medium: "160x160>", microspot_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	belongs_to :user
	validates :content, length: {maximum: 1500 },
	presence: true

	def self.search(search)
  		where("name LIKE ?", "%#{search}%") 
  		where("content LIKE ?", "%#{search}%")
	end
end
