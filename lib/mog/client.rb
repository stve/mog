require 'faraday_middleware'
require 'mog/version'

module Mog
  class Client

    def initialize(options={})
      @api_endpoint = options[:api_endpoint] || 'http://api.mog.com'
      @user_agent = options[:user_agent] || "Mog RubyGem Version #{Mog::VERSION}"
      @adapter = options[:adapter] || Faraday.default_adapter
    end

    def track(track_id)
      request("/v2/tracks/#{track_id}.json")
    end

    def tracks
      response = request('/v2/charts/tracks.json')
      response.tracks
    end

    def album(album_id)
      request("/v2/albums/#{album_id}.json")
    end

    def albums
      response = request('/v2/charts/albums.json')
      response.albums
    end

    def artist(artist_id)
      request("/v2/artists/#{artist_id}.json")
    end

    def artists
      response = request('/v2/charts/artists.json')
      response.artists
    end

    def playlist(playlist_id)
      request("/v2/playlists/#{playlist_id}.json")
    end

    def playlists
      response = request('/v2/charts/playlists.json')
      response.playlists
    end

    private

    # Perform an HTTP GET request
    def request(url, params={})
      response = connection.get do |req|
        req.url url, params
      end
      response.body
    end

    def connection
      options = {
        :headers => {'Accept' => "application/json", 'User-Agent' => @user_agent},
        :url => @api_endpoint,
      }

      Faraday.new(options) do |builder|
        builder.use Faraday::Response::Rashify
        builder.use Faraday::Response::ParseJson
        builder.adapter(@adapter)
      end
    end

  end
end