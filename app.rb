require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end

end







# 	post '/piglatinize' do
#     pl = PigLatinizer.new
#     @piglatin = pl.piglatinize(params[:user_phrase])
#     erb :results
#  	end

# 	get '/' do
# 	@piglatinized_text = PigLatinizer.new(params[:user_text])
# 	erb	:user_input
# 		end
# end