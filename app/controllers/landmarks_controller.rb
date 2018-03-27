class LandmarksController < ApplicationController

  get '/landmarks/new' do

    erb :'figures/new'
  end

end
