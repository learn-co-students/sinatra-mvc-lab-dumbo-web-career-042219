require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post "/piglatinize" do
    pig = PigLatinizer.new
    @phrase = pig.piglatinize(params[:user_phrase])
    erb :user_input
  end
end