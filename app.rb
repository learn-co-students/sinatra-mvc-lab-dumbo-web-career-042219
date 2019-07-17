require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    
    erb :user_input
  end
  
# //Submit button of a form link to the directory that Action attribute points to
  post '/' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end 
  
end