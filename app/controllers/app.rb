# frozen_string_literal: true

require 'sinatra/base'
require_relative '../../lib/api_explore'

# App class
class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/api_explore' do
    @api = ApiExplore.new(params[:url])
    erb :api_explore
  end
end
