class Movie < ApplicationRecord
  has_many :favorite_movies
  has_many :users, through: :favorite_movies

  include HTTParty
  base_uri 'http://www.omdbapi.com/?apikey=d31f1a94&i='

  def self.generate(api_id)
    response = get api_id

    create!(title: response['Title'],
            genre: response['Genre'],
            year: response['Year'],
            synopis: response['Plot'],
            picture: response['Poster'])
  end
end
