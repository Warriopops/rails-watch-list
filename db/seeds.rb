# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

movie1 = Movie.create(title: "Scary Movie 1" ,overview: "Marrant", poster_url: "R", rating: 2)
movie2 = Movie.create(title: "Scary Movie 2" ,overview: "Marrant ou pas", poster_url: "Ra", rating: 3)
movie3 = Movie.create(title: "Scary Movie 3" ,overview: "Marrant et si", poster_url: "Rb", rating: 4)
