# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'rest-client'
puts 'Getting Movies Data'

def movies_seeds
  link = RestClient.get('https://tmdb.lewagon.com/movie/top_rated')
  movies = JSON.parse(link)['results']
  movies.each do |movie|
    Movie.create!(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}",
      rating: movie['vote_average'].to_f
    )
  end
end

movies_seeds
puts 'Movies seeding done'
