# frozen_string_literal: true

# tests for mvc app
require_relative 'spec_helper'

RSpec.describe 'App' do
  describe 'GET /' do
    it 'returns a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

  describe 'GET /new' do
    it 'returns a 200 status code' do
      get '/new'
      expect(last_response.status).to eq(200)
    end
  end

  describe 'POST /new' do
    it 'returns a 200 status code' do
      post '/new', params = { url: 'https://www.google.com' }
      expect(last_response.status).to eq(200)
    end

    it 'returns a 400 status code' do
      post '/new', params = { url: 'https://www.google.com' }
      expect(last_response.status).to eq(400)
    end
  end

  describe 'GET /:short_url' do
    it 'returns a 302 status code' do
      get '/:short_url'
      expect(last_response.status).to eq(302)
    end

    it 'returns a 404 status code' do
      get '/:short_url'
      expect(last_response.status).to eq(404)
    end
  end
end
