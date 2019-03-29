
class Movie < ApplicationRecord
	belongs_to :user
	has_many :reviews
	
	def self.search(search)
		if search
			where(["LOWER(title) LIKE ?","%#{search.downcase}%"])
			
		else
			all
		end
end



	
	has_attached_file :image, styles: { medium: "400x600#" }, default_url: "/images/:style/missing.png" 
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	  
	end #paperclip gem
