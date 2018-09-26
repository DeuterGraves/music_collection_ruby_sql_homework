require_relative("../db/sqlrunner.rb")

class Artist

  attr_reader :id
  attr_accessor :name

def initialize(options)
  @id = options["id"].to_i
  @name = options["name"]
end

# delete all

def self.delete_all()
  sql = "
  DELETE FROM artists;"
  SqlRunner.run(sql)

end

# create/save

def save()
  # SQL will need to also return the Iid assigned.
  sql = "
  INSERT INTO artists
  (name)
  VALUES ($1)
  RETURNING id;
  ;"

  # need to pass the variables in as an array as well.
  # we need the id to come back - so store in a variable.
  result = SqlRunner.run(sql, [@name])
  @id = result[0]["id"].to_i
end

# list all artists

def self.list()
    # bring back all the artists
  sql = "
  SELECT * from artists;
  "
  # this will bring back that weird crypic mess, so you'll need to break it out into an array of hashes. GO!
  artist_hashes = SqlRunner.run(sql)
  artist_list = artist_hashes.map { |artist_hash| Artist.new(artist_hash)  }

end

# list albums by artists
# I can interpret this two ways -- 1. all albums by 1 artist, or albums alphabetical by artist name... hrm... which to do first. albums alpha by artist belongs on the albums class.

def all_by_artist()

  sql = "
    SELECT * FROM albums
    WHERE artist_id = $1;
  "

  album_hashes = SqlRunner.run(sql, [@id])
  album_list = album_hashes.map {|album_hash| Album.new(album_hash)}
  return album_list

end



###

# edit artist

# delete

# find by id

  #class end
end
