# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/unit'

require_relative 'lib/api_explore'

describe 'API' do
  it 'should return 200' do
    _(APIExplore::Client.hello).must_equal 'hello'
  end
end
