require 'spec_helper'

describe "Movie" do

	it "calculates the average number of review stars" do
	  movie = Movie.create(movie_attributes)

	  movie.reviews.create(review_attributes(stars: 1))
	  movie.reviews.create(review_attributes(stars: 3))
	  movie.reviews.create(review_attributes(stars: 5))
	  
	  expect(movie.average_stars).to eq(3)
	end
end