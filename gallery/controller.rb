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
