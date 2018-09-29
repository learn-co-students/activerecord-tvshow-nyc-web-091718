class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows, :season, :string
  end #end of create table

end #end of CreateShows class
