require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/artist')
require_relative('./models/exhibit')
require_relative('./models/assignment')
also_reload('./models/*')


#shows all artists at index
get '/brown-study' do
  @artists = Artist.all
  # @exhibits = Exhibit.all
  erb(:index)
end

get '/artists/new' do
  erb(:new)
end

post 'artists/new' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:added_artist)
end

get '/exhibits/new' do
  erb(:new_exhibit)
end
