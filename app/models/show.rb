class Show < ActiveRecord::Base
   has_many :characters
   has_many :actors, through: :characters
   belongs_to :network

   def actors_list #returns a list of the full names of each actor associated with the show
    self.actors.map do |a|
    "#{a.first_name} #{a.last_name}"
    end 
   end  
end