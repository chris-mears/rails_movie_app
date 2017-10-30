# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FavoriteMovie.destroy_all
Movie.destroy_all
User.destroy_all

movies = []
movies_2 = []

movies << Movie.generate("tt0076759")
movies << Movie.generate("tt0080684")
movies << Movie.generate("tt0086190")
movies << Movie.generate("tt0088763")
movies << Movie.generate("tt2724064")
movies << Movie.generate("tt0151804")
movies << Movie.generate("tt0942385")
movies << Movie.generate("tt0110475")
movies_2 << Movie.generate("tt0105812")
movies_2 << Movie.generate("tt0113855")
movies_2 << Movie.generate("tt0368226")
movies_2 << Movie.generate("tt0111301")
movies_2 << Movie.generate("tt0120338")
movies_2 << Movie.generate("tt0137523")
movies_2 << Movie.generate("tt0091499")

user1 = User.create(
  email: 'chris@chris.com',
  password: 'foobar',
  password_confirmation: 'foobar'
)

user2 = User.create(
  email: 'tom@tom.com',
  password: 'foobar',
  password_confirmation: 'foobar'
)

movies.each do |movie|
  FavoriteMovie.create(
    user_id: user1.id,
    movie_id: movie.id
  )
end

movies_2.each do |movie|
  FavoriteMovie.create(
    user_id: user2.id,
    movie_id: movie.id
  )
end
