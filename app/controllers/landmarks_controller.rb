class LandmarksController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    #binding.pry
     @landmark = Landmark.create(params["landmark"])
     @landmark.save
     redirect to "/landmarks/#{@landmark.id}"
   end


end
