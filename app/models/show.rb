class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where(:rating => Show.highest_rating).first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where(:rating => Show.lowest_rating).first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    #Show.where("rating > 5")
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end
end

# create_table :shows do |t|
#   t.string :name
#   t.string :network
#   t.string :day
#   t.integer :rating
# end


# attributes
#     has data attributes given to it from a migration file (FAILED - 1)
#     has a season (FAILED - 2)
#     has a season column and attribute added from another migration file (FAILED - 3)


# * `highest_rating`: this method should return the highest value in the ratings column.
#       *hint*: if there is a `minimum` Active Record method, might there be a `maximum` method?
# * `most_popular_show`: this method should return the show with the highest rating.
#       *hint*: use the `highest_rating` method as a helper method.
# * `lowest_rating`: returns the lowest value in the ratings column.
# * `least_popular_show`: returns the show with the lowest rating.
# * `ratings_sum`: returns the sum of all of the ratings.
# * `popular_shows`: returns an array of all of the shows that have a rating greater than `5`.
#     *hint*: use the `where` Active Record method.
# * `shows_by_alphabetical_order`: returns an array of all of the shows sorted by alphabetical order
#       according to their names. *hint*: use the `order` Active Record method.
