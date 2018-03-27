class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmark/show'
  end

  get '/figures/:id/edit' do

     @figure = Figure.find(params[:id])
     erb :'figures/edit'
  end


  post '/landmarks' do
    #binding.pry
     @landmark = Landmark.create(params["landmark"])
     @landmark.save
     redirect to "/landmarks/#{@landmark.id}"
   end


end
