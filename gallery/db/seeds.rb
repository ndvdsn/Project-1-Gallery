require_relative("../models/artist")
require_relative("../models/exhibit")
# require_relative("../models/assignment")


require('pry')

# Assignment.delete_all()
Exhibit.delete_all()
Artist.delete_all()


artist1 = Artist.new({"first_name" => "Rachel", "last_name" => "Lowther", "artist_information" => "Rachel Lowther is an artist who makes  sculpture, installations, photography, video, drawings and album covers that question the comfortable position of making art in a world that is anything but comfortable. In a statement on the Glasgow Sculpture Studios website, she says that she wants to make art purely for pleasure, without having to consider how art should respond to 'bodies torn apart, flesh and bone melted by white phosphorus, children tortured or bombed as they play on a beach, families dreaming of drones and letters from grieving parents.' Her vaguely lurid surrealist sculptures embody both a detached hermetic cruelty and the hopeful simplicity of images from a child’s picture book. 
"})
artist2 = Artist.new({"first_name" => "Anneke", "last_name" => "Kampman", "artist_information" => "Anneke Kampman is an artist working with text, music and moving image. Recently, her artworks have taken the form of performances, installations, vinyl records, films, essays and lectures. Her works examine the manner in which the culture industry produces ‘personality’ for purposes of profit, addressing issues of standardisation, reproduction and artistic autonomy within the global circulation of popular music.
Collective practice is an intrinsic component of her ongoing work. She has collaborated on projects including the Opera Labyrinthine with Lucy Duncombe and Jane Dickson and A Library of and for Listening with Katherine Macbride. Anneke was an associate artist at Open School East from 2016-17. She is currently part of artist collective ‘Common Study’, currently resident at Somerset House where we facilitate a weekly learning programme.
"})
artist3 = Artist.new({"first_name" => "Fritz", "last_name" => "Welch", "artist_information" => "Fritz Welch is a drummer, percussionist and vocalist determined to stretch the escalator of possibilities into the bloodshot eye of results. He currently plays in Lambs Gamble (with Eric Boros and George Cremaschi), FvRTvR (with Guido Henneböhl) and in various ensembles with guitarist Neil Davidson  including Asparagus Piss Raindrop. A longtime Brooklynite of Texas origins, he is now based in Glasgow."})
artist4 = Artist.new({"first_name" => "Beatrice", "last_name" => "Loft Schultz", "artist_information" => "Beatrice Loft Schulz lives and works in Glasgow, UK.
Working across performance, installation and writing, Loft Schulz employs both manual and digital crafts such as tie dye, HTML coding and paper making in which the labour of the work is evident. These objects are often slight and require care, putting the viewer into a precarious relationship with their disintegration, damage, and destruction. These deal with the body’s gendered relationship to architecture and space, interacting with the specific theatricality of the different architectural spaces where they take place, such as the theatre, the museum, or the white cube. Channeling historical figures such as Joan of Arc and troubadora Beatrice de Dia, the performances exist in the slippage between the apparent authenticity of the embodied speaking subject and the experience of living in a body always already compromised, mediated, and observed by power."})
artist5 = Artist.new({"first_name" => "Jean-Luc", "last_name" => "Guionnet", "artist_information" => "Jean-Luc Guionnet is a Parisian artist whose practice encompasses composition, improvisation, filmmaking, and philosophy. He has toured extensively as a solo saxophonist, and has spent the past 15 years performing on on historic church organs around the world. For him, music is one of many methods by which to test reality. Having studied musique concrète under Iannis Xenakis, his acousmatic sensitivities reveal themselves through the reverence that guides these interrogations. Approaching his instruments as imperfect vehicles of artificial intelligence, his attentive engagement applies speculative pressure to the expressive limits of their material properties. In his hands, design flaws and repressed qualities transform into catalysts for novel sonic emanations, and the simplest of processes are mobilized to extract infinitesimal acoustic detail. Although a formidable solo performer, Guionnet is no stranger to collaboration. In addition to his ongoing relationship to the seminal French improvisation group Hubbub, he has worked extensively with artists such as Taku Unami, Eric La Casa, Toshimaru Nakamura, Will Guthrie, and Mattin."})

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save

exhibit1 = Exhibit.new({"title" => "Scrofula & Pox", "exhibit_information" => "URL", "category" => "Textiles", "artist_id" => artist1.id})
exhibit2 = Exhibit.new({"title" => "Inner Outer Otter", "exhibit_information" => "URL", "category" => "Performance",  "artist_id" => artist2.id})
exhibit3 = Exhibit.new({"title" => "CRYSTALLINE CHRYSALIS CRISIS", "exhibit_information" => "URL", "category" => "Sculpture",  "artist_id" => artist3.id})
exhibit4 = Exhibit.new({"title" => "Living Arrangement", "exhibit_information" => "URL", "category" => "Textiles",  "artist_id" => artist4.id})
exhibit5 = Exhibit.new({"title" => "non organic bias", "exhibit_information" => "URL", "category" => "Drawing",  "artist_id" => artist5.id})
exhibit6 = Exhibit.new({"title" => "house", "exhibit_information" => "URL", "category" => "Drawing",  "artist_id" => artist5.id})
exhibit7 = Exhibit.new({"title" => "Scented Jackhammer", "exhibit_information" => "URL", "category" => "Sculpture",  "artist_id" => artist4.id})

exhibit1.save
exhibit2.save
exhibit3.save
exhibit4.save
exhibit5.save
exhibit6.save
exhibit7.save


# assignment1 = Assignment.new({"artist_id" => artist1.id, "exhibit_id" => exhibit1.id})
# assignment2 = Assignment.new({"artist_id" => artist2.id, "exhibit_id" => exhibit2.id})
# assignment3 = Assignment.new({"artist_id" => artist3.id, "exhibit_id" => exhibit3.id})
# assignment4 = Assignment.new({"artist_id" => artist4.id, "exhibit_id" => exhibit4.id})
# assignment5 = Assignment.new({"artist_id" => artist5.id, "exhibit_id" => exhibit5.id})
# assignment6 = Assignment.new({"artist_id" => artist5.id, "exhibit_id" => exhibit6.id})
# assignment7 = Assignment.new({"artist_id" => artist4.id, "exhibit_id" => exhibit7.id})
#Note - seems like an artist can't take more than one assignment??? needs work.


# 
# assignment1.save
# assignment2.save
# assignment3.save
# assignment4.save
# assignment5.save
# assignment6.save
# assignment7.save

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
