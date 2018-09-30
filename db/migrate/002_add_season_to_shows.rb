class AddSeasonToShows <ActiveRecord::Migration
  def change
    add_column :shows, :season, :string
  end #end change method
end #end AddSeasonToShows class
