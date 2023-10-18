# frozen_string_literal: true

require_relative 'spec_helper'
require_relative 'lib/api_explore'

describe 'API' do
  it 'should return 200' do
    _(APIExplore::Client.hello).must_equal 'hello'
  end
end
