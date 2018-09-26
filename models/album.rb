require ("../db/sqlrunner.rb")

class Album

attr_reader :id, :artist_id
attr_accessor :title, :year, :genre

  def initialize(options)
    @id = options["id"].to_i #this is the one assigned by the db.
    @title = options["title"]
    @year = options["year"].to_i
    @genre = options["genre"]
    @artist_id = options["artist_id"]

  end




end
