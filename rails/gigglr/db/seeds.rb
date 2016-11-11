Gig.delete_all()
Venue.delete_all()

Album.delete_all()
Artist.delete_all()

a1 = Artist.create({ name: 'Oasis'})
a2 = Artist.create({ name: 'Justin Bieber'})

Album.create( {artist_id: a1.id, name: 'Roll With It'} )
Album.create( {artist_id: a1.id, name: 'Defos maybs'} )
Album.create( {artist_id: a2.id, name: 'Greatest Hits'} )

v1 = Venue.create({name: '02 Arena', location: 'London'})
v2 = Venue.create({name: 'Corn Exchange', location: 'Edinburgh'})

Gig.create({price: 1, date: "2017-01-12", artist_id: a2.id, venue_id: v2.id})
Gig.create({price: 1, date: "2017-02-12", artist_id: a1.id, venue_id: v1.id})