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

artist3 = Artist.new({
  "name" => "The Donnas"
  }
)
artist3.save()

artist4 = Artist.new({
  "name" => "The Reverend Horton Heat"
  }
)
artist4.save()

p Artist.list()

album1= Album.new({
  "title" => "Southern Rock Opera",
  "year" => 2001,
  "genre" => "Southern Rock",
  "artist_id" => artist1.id
  }
)
album1.save()

album2 = Album.new({
  "title" => "Decoration Day",
  "year" => 2003,
  "genre" => "Southern Rock",
  "artist_id" => artist1.id

  })
album2.save()

album3 = Album.new({
  "title" => "Dirty South",
  "year" => 2004,
  "genre" => "Southern Rock",
  "artist_id" => artist1.id

  })
album3.save()

album4 = Album.new({
  "title" => "Whisky, Whores, and Overtime",
  "year" => 1998,
  "genre" => "Hellbilly",
  "artist_id" => artist2.id
  })
album4.save()


album5 = Album.new({
  "title" => "Cold, Blue, and Hateful",
  "year" => 1993,
  "genre" => "Hellbilly",
  "artist_id" => artist2.id
  })
album5.save()

album6 = Album.new({
  "title" => "Get Skintight",
  "year" => 1999,
  "genre" => "Garage Punk",
  "artist_id" => artist3.id
  })
album6.save()

album7 = Album.new({
  "title" => "Turn 21",
  "year" => 2001,
  "genre" => "Garage Punk",
  "artist_id" => artist3.id
  })
album7.save()

album7 = Album.new({
  "title" => "Spend the Night",
  "year" => 2001,
  "genre" => "Garage Punk",
  "artist_id" => artist3.id
  })
album7.save()


binding.pry
p "ROCK STARS!!!"
