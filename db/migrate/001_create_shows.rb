class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end

# class CreateShows < ActiveRecord::Migration
#   def change
#     create_table :shows do |t|
#       #primary key of :id is created for us!
#       t.string :name
#       t.string :day
#       t.string :network
#       t.integer :rating
#     end
#   end
# end

# attributes
#     has data attributes given to it from a migration file (FAILED - 1)
#     has a season (FAILED - 2)
#     has a season column and attribute added from another migration file (FAILED - 3)
#
#     create a `shows` table. The table should have `name`, `network`, `day`, and `rating` columns.
#     `name`, `network`, and `day` have a datatype of string, and `rating` has a datatype of integer.
