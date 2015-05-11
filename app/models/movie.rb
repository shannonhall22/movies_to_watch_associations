class Movie < ActiveRecord::Base
  def director
    return Director.find(self.director_id)
  end

  def role
    return Role.where(:movie_id => self.id)
  end

  def actors
    actors = []
    self.role.each do |role|
      actors << role.actor
    end
    return actors
  end

  def actors_test
    self.role.map { |role| role.actor }
  end
end
