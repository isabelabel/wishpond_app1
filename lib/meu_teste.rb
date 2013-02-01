require "mysql2"
require "singleton"


class MeuTeste

	include Singleton

	def initialize
		@conection = Mysql2::Client.new(:host => "127.0.0.1", :username => "root", :password => "root",:database => "campaings_app_development")
	end

	
	def read_campaings

		if(@array_campaing.nil?)
			res = @conection.query("select * from campaings ORDER BY participants")

			@array_campaing = Array.new(res.count, Hash.new)

			i = 0;
			
			res.each do |row|

				@array_campaing[i][:id] = row['id']
				@array_campaing[i][:name] = row['name']
				@array_campaing[i][:description] = row['description']
				@array_campaing[i][:participants] = row['participants']
				@array_campaing[i][:start_date] = row['start_date']
				@array_campaing[i][:end_date] = row['end_date']
				@array_campaing[i][:photo_file_name] = row['photo_file_name']
				@array_campaing[i][:photo_content_type] = row['photo_content_type']
				@array_campaing[i][:photo_file_size] = row['photo_file_size']

				i+=1
			end

		end
		

		@array_campaing

	end

end