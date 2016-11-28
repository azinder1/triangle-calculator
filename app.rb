require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle.rb')

get('/') do
  erb(:index)
end

get('/tri') do
  side1 = params.fetch('side1').to_i
  side2 = params.fetch('side2').to_i
  side3 = params.fetch('side3').to_i
  @triangle = Triangle.new(side1, side2, side3)
  erb(:output)
end
