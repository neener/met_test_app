class ArtObject < ApplicationRecord

	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			ArtObject.create({object_number: row['Object Number'], department: row['Department'], title: row['Title']})
		end
	end

end
