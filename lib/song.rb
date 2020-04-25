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
 song = Song.new(filename.split(" - ")[1])
song.artist_name = filename.split(" - ")[0]
end

def artist_name=(name)
  
end