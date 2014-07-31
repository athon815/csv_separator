module CSVUpload
require 'csv'

	def import_csv(file)
		puts "Method begins"
		CSV.foreach(file.path, :encoding => 'windows-1251:utf-8', :headers => true) do |row|
			if row["company"].downcase.include?("academy" || "lutheran" || "jewish" || "private" || "christian")
				CSV.open("new.csv", "ab") do |csv|
					csv << row
					puts "First Row"
				end
			else
				CSV.open("old.csv", "ab") do |csv|
					csv << row
					puts "Second Row"
				end
			end
		end
	end
end