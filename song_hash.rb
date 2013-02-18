songs = [
  "The Magnetic Fields - 69 Love Songs - Parades Go By",
  "The Magnetic Fields - Get Lost - Smoke and Mirrors",
  "The Magnetic Fields - 69 Love Songs - The Book of Love",
  "Neutral Milk Hotel - In An Aeroplane Over the Sea - Holland 1945",
  "The Magnetic Fields - Get Lost - You, Me, and the Moon",
  "Neutral Milk Hotel - In An Aeroplane Over the Sea - The King of Carrot Flowers",
  "Neutral Milk Hotel - On Avery Island - April 9th",
  "The Phoenix - ALBUM - 1901",
  "Tokyo Police Club - ALBUM - Wait Up",
  "Sufjan Stevens - ALBUM - Too Much",
  "The Naked and the Famous - ALBUM - Young Blood",
  "(Far From) Home - ALBUM - Tiga",
  "The Cults - ALBUM - Abducted",
  "The Phoenix - ALBUM - Consolation Prizes"
]
 
library = {:artists => {}}
# {
#   :artists => {
#     :"The Magnetic Fields" => {
#       :albums => {
#         :"69 Love Songs" => ["The Magnetic Fields - 69 Love Songs - The Book of Love", "The Magnetic Fields - 69 Love Songs - Parades Go By"]
#       }
#     }
#   }
# }
 
 
 
 
songs.each_with_index do |song|
  parts = song.split(" - ")
  artist = parts.first
  album = parts[1]
  song_name = parts.last
 
  if !library[:artists][artist.to_sym]
    library[:artists][artist.to_sym] = {:albums => {}}
  end
 
  if !library[:artists][artist.to_sym][:albums][album.to_sym]
    library[:artists][artist.to_sym][:albums][album.to_sym] = []
  end
 
  library[:artists][artist.to_sym][:albums][album.to_sym] << song
 
end
 
pp library