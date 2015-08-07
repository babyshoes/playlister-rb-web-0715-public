describe "Song" do
  it "can initialize a song" do
     expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
     song = Song.new
     song.name = "Turning Tables"
     expect(song.name).to eq "Turning Tables"
  end

  it "can have a genre" do
     song = Song.new
     pop = Genre.new
     song.genre = pop
     expect(song.genre).to eq pop

  end

  it "has an artist" do
     song = Song.new
     song.artist = "Adele"
     expect(song.artist).to eq "Adele"
  end

end
