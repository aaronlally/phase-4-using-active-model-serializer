class MovieSerializer < ActiveModel::Serializer
  attributes :summary

  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end



end
# rails g serializer movie  -----this exactly

# when the server is open you will only see the summary for each movie
# :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director
# normally we would have^^^^^^if you are going to display the normal data for someone visiting /movies 
# so just add the method you create to the attributes if you would like to display it, or make a custom display method