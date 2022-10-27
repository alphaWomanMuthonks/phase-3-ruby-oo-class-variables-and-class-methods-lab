class Song
     @@count = 0
     @@artists = []
     @@genres = []
     @@genre_count
     @@artist_count

    attr_accessor :name, :artist, :genre

    def initialize(song_name, artist, genre)
        @name = song_name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre 
        @@artists << artist 
    end 
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end


end

Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")