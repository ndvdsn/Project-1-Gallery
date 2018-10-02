require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/artist')
require_relative('./models/exhibit')
# require_relative('./models/assignment')
also_reload('./models/*')


#shows all artists at index manager
get '/brown-study' do
  erb(:index)
end

get '/manager_index' do
  erb(:manager_index)
end

#show all artists at artists page
get '/artists' do
  @artists = Artist.all
  erb(:view_artists)
end


# show all exhibits at exhibits page
get '/exhibits' do
  @exhibits = Exhibit.all
  erb(:view_exhibits)
end

#show all exhibits at current exhibition
get '/current_exhibition' do
  @exhibits = Exhibit.all
  erb(:current_exhibition)
end




#add new artist
get '/artists/new' do
  erb(:new)
end

post '/artists/new' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:added_artist)
end

#add new exhibit
get '/exhibits/new' do
  @artists = Artist.all
  erb(:new_exhibit)
end

post '/exhibits/new' do
  @exhibit = Exhibit.new(params)
  @exhibit.save()
  erb(:added_exhibit)
end

#edit and update artist
get '/edit_artist/:id' do
  @artist = Artist.find(params[:id])
  erb(:edit)
end

post '/edit_artist/:id' do
  artist = Artist.new(params)
  artist.update()
  redirect '/brown-study'
end

#edit and update exhibit
get '/edit_exhibit/:id' do
  @exhibit = Exhibit.find(params[:id])
  @artists = Artist.all
  erb(:edit_exhibit)
end

post '/edit_exhibit/:id' do
  exhibit = Exhibit.new(params)
  exhibit.update_exhibit()
  redirect '/brown-study'
end

#show one artist
get '/artist/:id' do
  @artist = Artist.find(params[:id])
  erb(:view_artist)
end

# show one exhibit
get '/exhibits/:id' do
  @exhibit = Exhibit.find(params[:id])
  erb(:view_exhibit)
end

# show one exhibit at public

get '/public_exhibits/:id' do
  @exhibit = Exhibit.find(params[:id])
  erb(:public_exhibit)
end
