require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')

get '/' do
  erb(:triangles)
end

post '/' do
  side1 = params[:side_1]
  side2 = params[:side_2]
  side3 = params[:side_3]
  @triangle = Triangle.new(side1, side2, side3)
  erb(:display)
end