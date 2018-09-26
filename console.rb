require("pry")
require_relative("./models/album.rb")
require_relative("./models/artist.rb")

Album.delete_all()
Artist.delete_all()
