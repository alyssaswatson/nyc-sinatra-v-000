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
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
     @landmark = Landmark.find(params[:id])
     erb :'landmarks/edit'
  end


  post '/landmarks' do
    #binding.pry
     @landmark = Landmark.create(params["landmark"])
     @landmark.save
     redirect to "/landmarks/#{@landmark.id}"
   end

   patch '/landmarks/:id' do
     #binding.pry
     @landmark = Landmark.find_by(params[:id])
     @figure.update(params[:figure])
     if !params[:landmark][:name].empty?
       @figure.landmarks << Landmark.create(params[:landmark])
     end

     if !params[:title][:name].empty?
       @figure.titles << Title.create(params[:title])
     end

     @figure.save
     redirect to "/figures/#{@figure.id}"
   end



end
