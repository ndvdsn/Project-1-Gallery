require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/artist')
require_relative('./models/exhibit')
also_reload('./models/*')

get '/index' do
  @artists = Artist.all
  erb(:index)
end

get '/artists/new' do
  @artists = Artist.all
  erb(:new)
end

# get '/index' do
#   "Hello World"
# end
