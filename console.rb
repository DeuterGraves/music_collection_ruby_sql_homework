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
  "name" => "Blue Deluxe Balls"
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

artist5 = Artist.new({
  "name" => "Nickleback"
  }
)
artist5.save()

p Artist.list()
p ""

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
  "title" => "Whisky, Whores, and Hateful",
  "year" => 1998,
  "genre" => "Hellbilly",
  "artist_id" => artist2.id
  })
album4.save()


album5 = Album.new({
  "title" => "Cold, Blue, and Overtime",
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

album78= Album.new({
  "title" => "Delete the Night",
  "year" => 2001,
  "genre" => "Garage Punk",
  "artist_id" => artist3.id
  })
album78.save()

album8 =  Album.new({
  "title" => "Spend a Night in the Box",
  "year" => 2000,
  "genre" => "Rockabilly",
  "artist_id" => artist4.id
  })
album8.save()

album9 =  Album.new({
  "title" => "Holy Roller",
  "year" => 1999,
  "genre" => "Rockabilly",
  "artist_id" => artist4.id
  })
album9.save()

album10 =  Album.new({
  "title" => "Smoke 'em if You Got 'em",
  "year" => 1990,
  "genre" => "Rockabilly",
  "artist_id" => artist4.id
  })
album10.save()

album11 =  Album.new({
  "title" => "Lucky 7",
  "year" => 2002,
  "genre" => "Rockabilly",
  "artist_id" => artist4.id
  })
album11.save()

album12 =  Album.new({
  "title" => "Rev",
  "year" => 2014,
  "genre" => "Rockabilly",
  "artist_id" => artist4.id
  })
album12.save()

album13 =  Album.new({
  "title" => "Laughin' and Cryin' with the Reverend Horton Heat",
  "year" => 2009,
  "genre" => "Rockabilly",
  "artist_id" => artist4.id
  })
album13.save()

album14 =  Album.new({
  "title" => "All the WRONG Reasons",
  "year" => 2005,
  "genre" => "TERRIBLE",
  "artist_id" => artist5.id
  })
album14.save()

p artist3.all_by_artist()
p ""

p album4
p album5
p album7
p ""

album4.title = "Whisky, Whores, and Overtime"
album4.update()
album5.title = "Cold, Blue, and Hateful"
album5.update()
album7.year = 2002
album7.update()
album78.delete()
artist2.name = "Blue Balls Deluxe"
artist2.update()
artist5.delete()



binding.pry
p "ROCK STARS!!!"
