class Director < ActiveRecord::Base
  def movie
    return Movie.where(:director_id => self.id)
  end
end
