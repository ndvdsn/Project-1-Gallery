require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/artist')
require_relative('./models/exhibit')
also_reload('./models/*')


#shows all artists at index
get '/index' do
  @artists = Artist.all
  erb(:index)
end


get '/artists/new' do
  @artists = Artist.all
  erb(:show)
end

# next would be a post method

get '/exhibits/new' do
  @exhibits = Exhibit.all
  erb(:show)
end

# need a thing that brings an exhibit via artist id or vice versa

# show one artist

get '/index/:id' do
  @artists = Artist.find(params[:id])
  erb(:show)
end
