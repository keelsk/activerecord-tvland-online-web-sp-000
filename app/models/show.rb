class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    actors = []
    self.characters.each do |character|
      actors << "#{character.name} - #{character.show.name}"
    end
    actors
  end
end