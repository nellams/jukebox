
class Playlist
  attr_reader :songs
  def initialize(song_names)

@available_songs = "Hello - Lionel Ritchie
Kokomo – The Beach Boys
Girl You Know It’s True – Milli Vanilli
Agadoo – Black Lace
Down Under - Men at Work
Nothing's Gonna Stop Us Now - Starship
Get Outta My Dreams, Get Into My Car - Billy Ocean
I Just Called To Say I Love You - Stevie Wonder
Hangin' Tough - New Kids on the Block
We Built This City - Starship
Wake Me Up Before You Go Go - Wham!
We Didn't Start The Fire - Billy Joel
I Wanna Dance With Somebody - Whitney Houston
U Can't Touch This - MC Hammer".split("\n")

    song_names.each do |song|
      if !@available_songs.include?(song)
        song_names.delete(song)
      end
    end
    @songs = song_names
  end

  def shuffle!
    @shuffle = @songs.shuffle!
  end

  def play!
    puts "Now playing: #{@songs[0]}"
    @songs.delete_at(0)
  end

  def add_track(song_title)
    if @available_songs.to_s.include?(song_title)
      @songs << song_title
      puts "true"
    else
      puts "false"
    end
  end
end

# a = Playlist.new(["Agadoo – Black Lace", "I Just Called To Say I Love You - Stevie Wonder", "We Didn't Start The Fire - Billy Joel", "Macarana"])
# a.shuffle!
# puts "Playlist is: #{a.songs}"
# a.play!
# puts "Playlist is: #{a.songs}"
# a.add_track("We Built This City")
# puts "Playlist is: #{a.songs}"
