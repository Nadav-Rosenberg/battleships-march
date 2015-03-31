require 'sinatra/base'
Dir[File.dirname(__FILE__) + 'lib/*.rb'].each { |file| require file }

class Battleships < Sinatra::Base  

  get '/' do
    erb :index
  end

  get '/registration_page' do
    # @game = Game.new(Player.new("matt"), Player.new("lee") )
    # @player_one_name = @game.player_1.name
    # @player_two_name = @game.player_2.name
    erb :registration_page
  end

  get '/board_page' do
    erb :board_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
