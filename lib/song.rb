class Song 

attr_accessor :name, :artist
@@all =[]

def initialize(name)
  @name = name 
  save
end

def save 
  @@all << self 
end

def self.all 
  @@all 
end

def self.new_by_filename(filename)
  artist, song = filename.split(" - ")
  song = Song.new(song)
  
end