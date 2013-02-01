require "mysql2"
require "singleton"

class AccessDb 

	include Singleton

	def initialize
		@conection = Mysql2::Client.new(:host => "127.0.0.1", :username => "root", :password => "root",:database => "campaings_app_development")
	end


	def read_campaings

		if(@array_campaing.nil?)
			res = @conection.query("select * from campaings ORDER BY participants")


			@array_campaing = Array.new(res.num_rows, Hash.new)


			for i in 0...(res.num_rows)
				row = res.fetch_row() 
		
				@array_campaing[i][:id] = row[0]
				@array_campaing[i][:name] = row[1]
				@array_campaing[i][:description] = row[2]
				@array_campaing[i][:participants] = row[3]
				@array_campaing[i][:start_date] = row[4]
				@array_campaing[i][:end_date] = row[5]
				@array_campaing[i][:photo_file_name] = row[6]
				@array_campaing[i][:photo_content_type] = row[7]
				@array_campaing[i][:photo_file_size] = row[8]

				#puts "Nome: #{array_campaing[i][:name]}"

			end

		end
		
		@array_campaing

	end
	
end