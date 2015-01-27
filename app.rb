require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/items')
require('./lib/purchases')
require('pg')

get('/') do
  erb(:index)
end

post('/items') do
  erb(:index)
end
