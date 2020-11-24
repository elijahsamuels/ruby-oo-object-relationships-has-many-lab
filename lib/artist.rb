require "pry"

class Artist

    @@all = []

    attr_accessor :name
  
    def initialize(name)
      @name = name
      @@all << self
    end



    def songs
        Song.all.select { |s| s.artist == self }
    end

    def self.all
        @@all
    end
    
        # takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
    def add_song(song)
        song.artist = self
    end

        # takes in an argument of a song name, creates a new song with it and associates the song and artist
    def add_song_by_name(song_name)
        newSong = Song.new(song_name)
        add_song(newSong)
    end


        # is a class method that returns the total number of songs associated to all existing artists 

    def self.song_count
        Song.all.count
    end

    
end
