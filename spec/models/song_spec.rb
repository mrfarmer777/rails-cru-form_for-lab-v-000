require 'rails_helper'

RSpec.describe Song, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @artist=Artist.create(name:"Adele", bio:"Sings a lot")
    @genre=Genre.create(name:"Grindcore")

  end

  it "belongs to an artist instance" do
    @song=Song.create(name:"Pickjuice",artist_id:1, genre_id:1)
    expect(Artist.find(1).songs).to include(@song)
  end

  it "belongs to its genre instance" do
    @song=Song.create(name:"Pickjuice",artist_id:1, genre_id:1)
    expect(@song.artist.songs).to include(@song)
  end
end
