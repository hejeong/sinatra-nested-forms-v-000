require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirates = Pirate.new(params["pirate"])
      params["pirate"]["ships"]
    #  @pirates = Pirate.new(params)
  #    @ship = Ship.new(params)
      erb :'pirates/show'
    end
  end
end
