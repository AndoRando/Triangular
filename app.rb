require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  side_moe = params.fetch('side_moe').to_i()
  side_larry = params.fetch('side_larry').to_i()
  side_curly = params.fetch('side_curly').to_i()
  @triangularity = Triangle.new(side_moe, side_larry, side_curly)
  erb(:results)
end
