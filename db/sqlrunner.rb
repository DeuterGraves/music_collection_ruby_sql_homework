require("pg")

class SqlRunner

# we're passing it values, which is defaulting to an empty array so that this will work even for methods like 'def' which won't have values passed. w/o this the method would flop.
  def self.run (sql, values=[])

    # connect to postgress database using the gem
    db = PG.connect({
        dbname: "music_collection",
        host: "localhost"
      })

    # this is the prepare statement part of the database script, it will take the sql from the method in the classes, check there's nothing hinky and then pass it along to the database to be acted on.
    db.prepare("query", sql)

    # here's where we store what gets set up in the database - this will help us get the id - which is generated at the database.
    result = db.exec_prepared("query", values)
    db.close()

    return result

  end

end
