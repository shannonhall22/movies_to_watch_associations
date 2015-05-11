class Role < ActiveRecord::Base
  def actor
    return Actor.find(self.actor_id)
  end

  def movie
    return Movie.find(self.movie_id)
  end

  def actors
    return Actor.find(self.actor_id)
  end
end
