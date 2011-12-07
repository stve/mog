# Mog

A Ruby wrapper around the Unofficial Mog API.  I've thus far been able to find 8 available API methods.

## Installation

    gem install mog

## Available Methods

* tracks
* track(track_id)
* albums
* album(album_id)
* artists
* artist(artist_id)
* playlists
* playlist(playlist_id)

## Usage

    require 'mog'

    >> client = Mog::Client.new
    >> artists = client.artists
    => [<#Hashie::Rash artists=[<#Hashie::Rash album_count=43 artist_id="187269" artist_image="http://images.musicnet.com/artists/000/187/269/s.jpeg" artist_name="Beyoncé" has_bio=false most_popular_album_id=19970857 most_recent_album_id=55232337 track_count=344>]

## <a name="build"></a>Build Status
[![Build Status](https://secure.travis-ci.org/spagalloco/mog.png?branch=master)][travis]

[travis]: http://travis-ci.org/spagalloco/mog

## <a name="dependencies"></a>Dependency Status
[![Dependency Status](https://gemnasium.com/spagalloco/mog.png?travis)][gemnasium]

[gemnasium]: https://gemnasium.com/spagalloco/mog


## Contributing

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2011 Steve Agalloco. See [LICENSE](https://github.com/spagalloco/mog/blob/master/LICENSE.md) for details.