require_relative("../models/artist")
require_relative("../models/exhibit")
require_relative("../models/assignment")


require('pry')

Assignment.delete_all()
Exhibit.delete_all()
Artist.delete_all()


artist1 = Artist.new({"first_name" => "Rachel", "last_name" => "Lowther", "artist_information" => "URL"})
artist2 = Artist.new({"first_name" => "Anneke", "last_name" => "Kampman", "artist_information" => "URL"})
artist3 = Artist.new({"first_name" => "Fritz", "last_name" => "Welch", "artist_information" => "URL"})
artist4 = Artist.new({"first_name" => "Beatrice", "last_name" => "Loft Schultz", "artist_information" => "URL"})
artist5 = Artist.new({"first_name" => "Jean-Luc", "last_name" => "Guionnet", "artist_information" => "URL"})

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save

exhibit1 = Exhibit.new({"title" => "Scrofula & Pox", "exhibit_information" => "URL", "category" => "Textiles"})
exhibit2 = Exhibit.new({"title" => "Inner Outer Otter", "exhibit_information" => "URL", "category" => "Performance"})
exhibit3 = Exhibit.new({"title" => "CRYSTALLINE CHRYSALIS CRISIS", "exhibit_information" => "URL", "category" => "Sculpture"})
exhibit4 = Exhibit.new({"title" => "Living Arrangement", "exhibit_information" => "URL", "category" => "Textiles"})
exhibit5 = Exhibit.new({"title" => "non organic bias", "exhibit_information" => "URL", "category" => "Drawing"})
exhibit6 = Exhibit.new({"title" => "house", "exhibit_information" => "URL", "category" => "Drawing"})
exhibit7 = Exhibit.new({"title" => "Scented Jackhammer", "exhibit_information" => "URL", "category" => "Sculpture"})

exhibit1.save
exhibit2.save
exhibit3.save
exhibit4.save
exhibit5.save
exhibit6.save
exhibit7.save


assignment1 = Assignment.new({"artist_id" => artist1.id, "exhibit_id" => exhibit1.id})
assignment2 = Assignment.new({"artist_id" => artist2.id, "exhibit_id" => exhibit2.id})
assignment3 = Assignment.new({"artist_id" => artist3.id, "exhibit_id" => exhibit3.id})
assignment4 = Assignment.new({"artist_id" => artist4.id, "exhibit_id" => exhibit4.id})
assignment5 = Assignment.new({"artist_id" => artist5.id, "exhibit_id" => exhibit5.id})
assignment6 = Assignment.new({"artist_id" => artist5.id, "exhibit_id" => exhibit6.id})
assignment7 = Assignment.new({"artist_id" => artist4.id, "exhibit_id" => exhibit7.id})
#Note - seems like an artist can't take more than one assignment??? needs work.



assignment1.save
assignment2.save
assignment3.save
assignment4.save
assignment5.save
assignment6.save
assignment7.save

# artist1.delete_artist()
# assignment1.delete_assignment()
# exhibit1.delete_exhibit()
#
#
# /Users/neildavidson/Documents/codeclan_work/week_4/projects/project_1/gallery/db/sql_runner.rb:9:in `async_exec_prepared': ERROR:  update or delete on table "artists" violates foreign key constraint "exhibits_artist_id_fkey" on table "exhibits" (PG::ForeignKeyViolation)
# DETAIL:  Key (id)=(56) is still referenced from table "exhibits".
# 	from /Users/neildavidson/Documents/codeclan_work/week_4/projects/project_1/gallery/db/sql_runner.rb:9:in `run'
# 	from /Users/neildavidson/Documents/codeclan_work/week_4/projects/project_1/gallery/models/artist.rb:32:in `delete_artist'
# 	from seeds.rb:37:in `<main>'

binding.pry
nil
