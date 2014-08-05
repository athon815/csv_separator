require 'csv'
module CSVUpload

	def csv_separate(file, keywords)
		new_list_counter = 0
		old_list_counter = 0

		# puts "Method begins"
		CSV.open("new_list.csv", "ab") do |new_list|
	    CSV.open("old_list.csv", "ab") do |old_list|  
		  	CSV.foreach(file, :encoding => 'windows-1251:utf-8', :headers => true) do |row|
		      if row["company"].include?(keywords)
		        new_list << row
		        puts "First Row"
		        new_list_counter += 1
		      else
		        old_list << row
		        puts "Second Row"
		        old_list_counter += 1
		      end
		    end
		  end
		end
	end
end

