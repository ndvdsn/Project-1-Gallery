# require_relative('../db/sql_runner')
#
# class Assignment
#
#
#   attr_reader :id, :artist_id, :exhibit_id
#
#   def initialize(options)
#     @id = options["id"].to_i if options["id"]
#     @artist_id = options["artist_id"].to_i
#     @exhibit_id = options["exhibit_id"].to_i
#   end
#
#   def save()
#     sql = "INSERT INTO assignments (artist_id, exhibit_id) VALUES ($1, $2) RETURNING id"
#     values = [@artist_id, @exhibit_id]
#     result = SqlRunner.run(sql, values)
#     id = result.first["id"]
#     @id = id
#   end
#
#   def delete_assignment()
#     sql = "DELETE FROM assignments WHERE id = $1"
#     values = [@id]
#     SqlRunner.run(sql, values)
#   end
#
#   def update()
#     sql = "UPDATE assignments SET ( artist_id, exhibit_id) = ($1, $2) WHERE id = $3"
#     values = [@artist_id, @exhibit_id, @id] #error was not having @id in here: pulls id from url etc
#     SqlRunner.run(sql, values)
#   end
#
#
#
#   def self.delete_all()
#     sql = "DELETE FROM assignments"
#     SqlRunner.run(sql)
#   end
#
#   def self.all()
#     sql = "SELECT * FROM assignments"
#     assignments = SqlRunner.run(sql)
#     result = artists.map{|assignment_hash|Assignment.new(assignment_hash)}
#     return result
#   end
#
#   def self.find(id)
#     sql = "SELECT * FROM assignments WHERE id = $1"
#     values = [id]
#     assignment = SqlRunner.run(sql, values)
#     result = Assignment.new( assignment.first)
#     return result
#   end
#
# end
