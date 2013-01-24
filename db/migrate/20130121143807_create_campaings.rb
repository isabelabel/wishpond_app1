class CreateCampaings < ActiveRecord::Migration
  def change
    create_table :campaings do |t|

    	t.string :name
    	t.string :description
    	t.integer :participants

    	t.datetime :start_date
    	t.datetime :end_date

    	t.string :photo_file_name
    	t.string :photo_content_type
    	t.string :photo_file_size

        t.timestamps
    end
  end
end
