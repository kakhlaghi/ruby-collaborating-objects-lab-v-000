class Artist 
<<<<<<< HEAD
  attr_accessor :name, :songs
=======
  attr_accessor :name 
>>>>>>> 0d1cfc11382048782f81ef46b4a87ef87939fc1b
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
<<<<<<< HEAD
  end
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.name = name
    @@all << artist
    artist
  end  
  
  def self.find(name)
    self.all.find {|one_in_all| one_in_all.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end  
  
  
=======
    @@all < self
  end

  def songs
    @songs
  end
  
  def add_song(song)
    song = Song.new(song)
    @songs << song.name  
  end
  
  def save
    @@all = self.song
  end
>>>>>>> 0d1cfc11382048782f81ef46b4a87ef87939fc1b
end