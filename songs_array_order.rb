# Given this List of Songs, Construct Arrays by Artist and Album
# Hint: Make use of the split() String Method
# http://www.ruby-doc.org/core-1.9.3/String.html#method-i-split
# Simple Example of Data Parsing
songs = [
  "The Magnetic Fields - 69 Love Songs - Parades Go By",
  "The Magnetic Fields - Get Lost - Smoke and Mirrors",
  "Neutral Milk Hotel - In An Aeroplane Over the Sea - Holland 1945",
  "The Magnetic Fields - Get Lost - You, Me, and the Moon",
  "The Magnetic Fields - 69 Love Songs - The Book of Love",
  "Neutral Milk Hotel - In An Aeroplane Over the Sea - The King of Carrot Flowers"
]
# Neutral Milk Hotel - In An Aeroplane Over the Sea - Holland 1945
# Neutral Milk Hotel - In An Aeroplane Over the Sea - The King of Carrot Flowers
# The Magnetic Fields - 69 Love Songs - Parades Go By
# The Magnetic Fields - 69 Love Songs - The Book of Love
# The Magnetic Fields - Get Lost - Smoke and Mirrors
# The Magnetic Fields - Get Lost - You, Me, and the Moon

# Psuedo Code Example

# iterate over each song in songs
# we need to somehow figure out the artist and album for the song
# pop the song into the correct array

# Creating some state, setting up where data will be stored.
# Nested arrays representing the artist, and then each nested array is an album

artist = [[[],[]],[]]