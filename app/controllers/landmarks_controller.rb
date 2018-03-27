class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmark/index'
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
