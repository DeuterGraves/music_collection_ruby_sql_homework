require_relative("../db/sqlrunner.rb")

class Artist

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

# create

# save

# list all artists

# * list all artists with ids? (should just happen)

# list albums by artists

###

# edit artist

# delete

# find by id

  #class end
end
