module SongsHelper
  def strong_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
