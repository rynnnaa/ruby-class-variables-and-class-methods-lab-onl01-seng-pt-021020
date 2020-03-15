class Song 
  
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor(:name, :artist, :genre)
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    hash = {}
<<<<<<< HEAD
    @@genres.each do |genre|
      if hash[genre]
        hash[genre] += 1
      else 
        hash[genre] = 1
      end
    end
    hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1 
      else
        artist_hash[artist] = 1 
      end
    end
    artist_hash
=======
    x = @@genre.each {|genre, num_songs|}
    hash << x
    end
>>>>>>> 330526f9771c2f1628883664bbe5d5f2fc771410
  end
end