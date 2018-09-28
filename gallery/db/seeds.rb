require_relative("../models/artist")
require_relative("../models/exhibit")

artist1 = Artist.new({"first_name" => "Rachel Lowther"})
artist2 = Artist.new({"first_name" => "Anneke Kampman"})
artist3 = Artist.new({"first_name" => "Fritz Welch"})
artist4 = Artist.new({"first_name" => "Beatrice Loft Schultz"})
artist5 = Artist.new({"first_name" => "Jean-Luc Guionnet"})

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save
artist6.save

exhibit1 = Exhibit.new({"title" => "Nothing compares to the first time getting shot at", "information" => "TEXT", "artist_id" => artist1.id})
exhibit2 = Exhibit.new({"title" => "Inner Outer Otter", "information" => "TEXT", "artist_id" => artist2.id})
exhibit3 = Exhibit.new({"title" => "CRYSTALLINE CHRYSALIS CRISIS", "information" => "TEXT", "artist_id" => artist3.id})
exhibit4 = Exhibit.new({"title" => "Living Arrangement", "information" => "TEXT", "artist_id" => artist4.id})
exhibit5 = Exhibit.new({"title" => "", "information" => "TEXT", "artist_id" => artist5.id})

exhibit1.save
exhibit2.save
exhibit3.save
exhibit4.save
exhibit5.save
