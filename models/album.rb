require_relative("../db/sqlrunner.rb")

class Album

attr_reader :id, :artist_id
attr_accessor :title, :year, :genre

  def initialize(options)
    @id = options["id"].to_i #this is the one assigned by the db.
    @title = options["title"]
    @year = options["year"].to_i
    @genre = options["genre"]
    @artist_id = options["artist_id"].to_i

  end

# delete all?

def self.delete_all()
  #this is just going to hose everthing. just needs sql, and sql runner.
  sql = "
  DELETE FROM albums
  ;"
  SqlRunner.run(sql)
end

# save

def save()
  # write your sql RETURN ID!!!
  sql = "
  INSERT INTO albums(
    title,
    year,
    genre,
    artist_id)
  VALUES($1, $2, $3, $4)
  RETURNING id;
  ;"

  values = [@title, @year, @genre, @artist_id]

  # run sql runner - remember you are bringing back the id for ruby object AND! passing in the details FROM the ruby object
  result = SqlRunner.run(sql, values)

  result_hash = result[0]
  string_id = result_hash["id"]
  @id = string_id.to_i()


end

# list all

def self.list()
  sql ="
  SELECT * FROM albums
  ;"

# this retuns that whole mess.
  result = SqlRunner.run(sql)
  album_hashes = result.map{ |album| Album.new(album)}

end

# show artist for album

def artist()
  # in the album we have the artist_id - on the artist table that's just 'id'
  sql = "
    SELECT * FROM artists
    WHERE id = $1
  ;"

  results = SqlRunner.run(sql, [@artist_id])
  artist_hash = results[0]
  artist= Artist.new(artist_hash)



end
###

# edit album

def update()
  sql = "
    UPDATE albums
    SET (title, year, genre)
    = ($1, $2, $3)
    WHERE id = $4
  ;"

  SqlRunner.run(sql, [@title, @year, @genre, @id])
end

# delete album

def delete()
  sql = "
    DELETE FROM albums
    WHERE id = $1
  ;"

  SqlRunner.run(sql, [@id])

end

# find by ID

def self.find(id)
  sql = "
  SELECT * FROM albums
  WHERE id = $1
  ;"

  result = SqlRunner.run(sql, [id])
  album_hash = result[0]
  album_oject = Album.new(album_hash)

end


#albums alphabetical by artist - OOOH ASK! because you'll need to actually get the list of artists in order, then use that order of artist_ids probably to set the order for the albums list hrm.
#or - you would just get all the albums and then sort them in ruby...
#
# def self.alpha_artist()
#   sql = "
#   SELECT * FROM albums
#   ORDER BY artist_id ASC
#   ;"


end
