Mog
===

A Ruby wrapper around the Unofficial Mog API.  I've thus far been able to find 4 available API methods.

Available Methods
-----------------

* tracks
* albums
* artists
* playlists

Usage
-----

    require 'mog'

    >> client = Mog::Client.new
    >> artists = client.artists
    => [<#Hashie::Rash artists=[<#Hashie::Rash album_count=43 artist_id="187269" artist_image="http://images.musicnet.com/artists/000/187/269/s.jpeg" artist_name="Beyoncé" has_bio=false most_popular_album_id=19970857 most_recent_album_id=55232337 track_count=344>]

Note on Patches/Pull Requests
-----------------------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright (c) 2011 Steve Agalloco. See LICENSE for details.