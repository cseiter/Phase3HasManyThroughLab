class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name=name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|ind_genre| ind_genre.genre == self}
    end

    def artists
        songs.map(&:artist)
    end
end
