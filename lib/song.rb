class Song

    @@all = []

    attr_accessor :name, :artist
  
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    # knows the name of its artist (FAILED - 15)
    # returns nil if the song does not have an artist (FAILED - 16)
    
    def artist_name
        artist == nil ? nil : artist.name
    end

end
