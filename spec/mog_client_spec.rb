require 'spec_helper'

describe Mog::Client do
  before(:each) do
    @client = Mog::Client.new
  end

  use_vcr_cassette :record => :new_episodes, :match_requests_on => [:uri, :method]

  describe '.album' do
    it 'should return an album' do
      album = @client.album('54705941')
      album.album_name.should eq('Bon Iver')
    end
  end

  describe '.albums' do
    it 'should return an array of albums' do
      albums = @client.albums
      albums.should be_kind_of Array
    end
  end

  describe '.artist' do
    it 'should return an artist' do
      artist = @client.artist('420136')
      artist.artist_name.should eq('Bon Iver')
    end
  end

  describe '.artists' do
    it 'should return an array of artists' do
      albums = @client.artists
      albums.should be_kind_of Array
    end
  end

  describe '.track' do
    it 'should return an track' do
      track = @client.track('54705943')
      track.track_name.should eq('Perth')
    end
  end

  describe '.tracks' do
    it 'should return an array of tracks' do
      albums = @client.tracks
      albums.should be_kind_of Array
    end
  end

  describe '.playlist' do
    it 'should return a playlist' do
      playlist = @client.playlist('819515')
      playlist.name.should eq('An Exclusive Playlist by Haley Bonar')
    end
  end

  describe '.playlists' do
    it 'should return an array of playlists' do
      albums = @client.playlists
      albums.should be_kind_of Array
    end
  end

end