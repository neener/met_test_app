class ArtObject < ApplicationRecord

	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			ArtObject.create({department: row['Department'], title: row['Title']})
		end
	end

end
