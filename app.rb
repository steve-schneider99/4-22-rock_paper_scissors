require('sinatra')
require('sinatra/reloader')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/outcome') do
  @player1 = params.fetch('player_1_outcome')
  @player2 = params.fetch('player_2_outcome')
  @outcome = @player1.rps(@player2)

  erb(:outcome)
  end
end
