require_relative("../models/artist")
require_relative("../models/exhibit")


require('pry')


artist1 = Artist.new({"first_name" => "Rachel", "last_name" => "Lowther", "artist_information" => "TEXT"})
artist2 = Artist.new({"first_name" => "Anneke", "last_name" => "Kampman", "artist_information" => "TEXT"})
artist3 = Artist.new({"first_name" => "Fritz", "last_name" => "Welch", "artist_information" => "TEXT"})
artist4 = Artist.new({"first_name" => "Beatrice", "last_name" => "Loft Schultz", "artist_information" => "TEXT"})
artist5 = Artist.new({"first_name" => "Jean-Luc", "last_name" => "Guionnet", "artist_information" => "TEXT"})

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save

exhibit1 = Exhibit.new({"title" => "Scrofula & Pox", "information" => "TEXT", "artist_id" => artist1.id})
exhibit2 = Exhibit.new({"title" => "Inner Outer Otter", "information" => "TEXT", "artist_id" => artist2.id})
exhibit3 = Exhibit.new({"title" => "CRYSTALLINE CHRYSALIS CRISIS", "information" => "TEXT", "artist_id" => artist3.id})
exhibit4 = Exhibit.new({"title" => "Living Arrangement", "information" => "TEXT", "artist_id" => artist4.id})
exhibit5 = Exhibit.new({"title" => "non organic bias", "information" => "TEXT", "artist_id" => artist5.id})

exhibit1.save
exhibit2.save
exhibit3.save
exhibit4.save
exhibit5.save
