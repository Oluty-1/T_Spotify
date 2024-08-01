resource "spotify_playlist" "playlist" {
  name        = "Big 3"

  tracks = [
    data.spotify_search_track.cole.tracks[0].id,
    data.spotify_search_track.cole.tracks[1].id,
    data.spotify_search_track.cole.tracks[2].id,
    data.spotify_search_track.drizzy.tracks[0].id,
    data.spotify_search_track.drizzy.tracks[1].id,
    data.spotify_search_track.drizzy.tracks[2].id,
    data.spotify_search_track.dot.tracks[0].id,
    data.spotify_search_track.dot.tracks[1].id,
    data.spotify_search_track.dot.tracks[2].id,
  ]
}

data "spotify_search_track" "cole" {
  artist = "J.Cole"
  limit = 10
}

data "spotify_search_track" "drizzy" {
  artist = "Drake"
  limit = 10
}

data "spotify_search_track" "dot" {
  artist = "Kendrick Lamar"
  limit = 10
}