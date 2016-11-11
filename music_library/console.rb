require('pry-byebug')
require_relative( './models/albums' )
require_relative( './models/artists')

artist1 = Artist.new( { 'name' => 'Rod Stewart' } )
artist1.save()

album1 = Album.new( { 'name' => 'Greatest Hits vol 240320', 'artist_id' => artist1.id } )






binding.pry
nil