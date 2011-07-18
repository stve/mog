require 'spec_helper'

describe Mog::Client do
  before(:each) do
    @client = Mog::Client.new
  end

  use_vcr_cassette :record => :new_episodes, :match_requests_on => [:uri, :method]

  describe '.albums' do
    it 'should return an array of albums' do
      albums = @client.albums
      albums.should be_kind_of Array
    end
  end

  describe '.artists' do
    it 'should return an array of artists' do
      albums = @client.artists
      albums.should be_kind_of Array
    end
  end

  describe '.tracks' do
    it 'should return an array of tracks' do
      albums = @client.tracks
      albums.should be_kind_of Array
    end
  end

  describe '.playlists' do
    it 'should return an array of playlists' do
      albums = @client.playlists
      albums.should be_kind_of Array
    end
  end

end