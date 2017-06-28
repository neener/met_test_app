class ArtObject < ApplicationRecord

	require 'csv'
	require 'net/http'

	def self.get_image_url(object_id)
		begin
			uri = URI("http://www.metmuseum.org/api/Collection/additionalImages?crdId=#{object_id}")
			res = Net::HTTP.get_response(uri)
			body = JSON.parse res.body
			body['results'][0]['webImageUrl']
		rescue => e
			puts e.message
			nil
		end
	end

	def self.import(path)
		CSV.foreach(path, headers: true) do |row|
			image_url = self.get_image_url(row['Object ID'])
			next if image_url.nil?
			ArtObject.create({ department: row['Department'], title: row['Title'], object_id: row['Object ID'], image_url: image_url})
		end
	end

end
