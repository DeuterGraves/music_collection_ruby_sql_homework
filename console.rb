require("pry")
require_relative("./models/album.rb")
require_relative("./models/artist.rb")

Album.delete_all()
Artist.delete_all()


#each attribute is now a hash for the database.
artist1 = Artist.new(
  {"name" => "Drive by Truckers"}
)
artist1.save()

artist2 = Artist.new({
  "name" => "Blue Balls Deluxe"
 }
)
artist2.save()

artist3 = Artist.new(
  {"name" => "The Donnas"}
)
artist3.save()

artist4 = Artist.new(
  {"name" => "The Reverend Horton Heat"}
)
artist4.save

binding.pry
p "ROCK STARS!!!"
