class Campaing < ActiveRecord::Base
  attr_accessible :name, :description, :participants, :start_date, :end_date, :photo

  validates_presence_of :name, message: "Name must be insert!" 
  validates_presence_of :participants, message: "Name must be insert!"
  validates_presence_of :description, message: "Name must be insert!"
  validates_presence_of :start_date, message: "Name must be insert!"
  validates_presence_of :end_date, message: "Name must be insert!"
  validates_presence_of :photo, message: "Name must be insert!"
  


  has_attached_file :photo,
    :styles => {
       :thumb=> "200x110#",
       :small=> "110x210#",
       :medium => "400x400#"
   }

end
