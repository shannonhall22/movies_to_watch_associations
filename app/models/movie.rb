class Movie < ActiveRecord::Base
  def director
    return Director.find(self.director_id)
  end

  def role
    return Role.where(:actor_id => self.id)
  end
end
