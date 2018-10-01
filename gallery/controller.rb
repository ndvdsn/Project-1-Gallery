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

post '/artists/new' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:added_artist)
end

get '/exhibits/new' do
  erb(:new_exhibit)
end

post '/exhibits/new' do
  @exhibit = Exhibit.new(params)
  @exhibit.save()
  erb(:added_exhibit)
end

get '/edit_artist/:id' do
  @artist = Artist.find(params[:id])
  erb(:edit)
end

post '/edit_artist/:id' do
  @artist = Artist.new(params[:id])
  @artist.update()
  redirect '/brown-study'
end

get '/edit_exhibit/:id' do
  @exhibit = Exhibit.find(params[:id])
  erb(:edit)
end

post '/edit_exhibit/:id' do
  @exhibit = EXhibit.new(params[:id])
  @exhibit.update()
  redirect '/brown-study'
end
