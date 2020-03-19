require 'pry'

class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters 

def actors_list
    characters = Character.all.select do |c|
        c.show_id = self.id 
    end
    characters.map do |c|
        Actor.find_by(id:c.actor_id).full_name
    end
end

end