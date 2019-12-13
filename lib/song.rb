
class Song 

    attr_accessor :name, :artist, :genre 
    @@all = []

    def initialize(name, artist, genre)

        @name, @artist, @genre = name, artist, genre 
        @@all << self 
    end 

    def self.all
        return @@all
    end 

end 