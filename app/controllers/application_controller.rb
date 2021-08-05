class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/bars" do
    bars = Bar.all
    bars.to_json(include: :bar_game_types)
  end

  get '/game_types' do
    game_types = BarGameType.all
    game_types.to_json
  end

  # get "/bars" do 
  #   bars = Bar.all
  #   bars.to_json()
  # end

  get "/bars/:bar_game_types/:city" do
    bars = Bar.where(params[:bar_game_types, :city])
    bars.to_json
  end

  post '/bars' do 
    bar = Bar.create(
      name: params[:name],
      description: params[:description],
      rating: params[:rating],
      city: params[:city],
    )
    game = Game.create(
      bar_id: bar.id,
      bar_game_type_id: params[:game],
      amount: params[:amount]

    )
    bar.to_json(include: :bar_game_types)
  end


end
