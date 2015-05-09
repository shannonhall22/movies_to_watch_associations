class Actor < ActiveRecord::Base
  def role
    return Role.where(:actor_id => self.id)
  end

  def movies
    return Movie.find(self.movie_id)
  end
end
