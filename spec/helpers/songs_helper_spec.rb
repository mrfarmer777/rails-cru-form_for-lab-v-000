require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SongsHelper. For example:
#
# describe SongsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SongsHelper, type: :helper do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "checks for strong params" do
    visit new_song_path
    fill_in :name => "Pickles"
    fill_in :artist_id => 1
    fill_in :genre_id => 1
    click_on :submit

    expect(page.body).to include("Pickles")
  end
end
