Genre.create!([
  {name: "action"},
  {name: "romance"},
  {name: "romcom"}
])
Actor.create!([
  {first_name: "Nathan", last_name: "Fillion", known_for: "Firefly", age: 40, gender: "male", movie_id: 2},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", age: 25, gender: "male", movie_id: 1}
])
Movie.create!([
  {title: "Karate Kid", year: 1984, plot: "Bullied kid solves all of his problems by learning how to kick people in the face", director: nil, english: true},
  {title: "Taken", year: 2009, plot: "he doesnt know who you are but he will kill you", director: nil, english: true},
  {title: "The Lion King", year: 1994, plot: "Hamlet meets Cats", director: nil, english: true},
  {title: "101 Dalmations", year: 1996, plot: "a brave mother and father rescue children from a serial killer who wears her victims' skins", director: nil, english: true},
  {title: "new movie", year: 2020, plot: "i created a new movie", director: "Tziporah", english: true},
  {title: "Frozen", year: 2013, plot: "Bad Parenting Begets the Next IceAge", director: "unknown", english: true}
])
MovieGenre.create!([
  {movie_id: 3, genre_id: 1},
  {movie_id: 6, genre_id: 2},
  {movie_id: 6, genre_id: 3},
  {movie_id: 1, genre_id: 3},
  {movie_id: 1, genre_id: 3}
])
User.create!([
  {name: "Tziporah", email: "tziporah@example.com", password_digest: "$2a$12$aYR7ovIFLF0I9xsXU70vK.Zdd4npHx/rnOz.8afxp1bekGS.xO9Pu", admin: false},
  {name: "Shmuel", email: "shmuel@example.com", password_digest: "$2a$12$jpBuGsAcV7K33.x9Ay/pPOeQnDaR5a/bNFtioRr4RUaNPH9A4Bpfm", admin: false}
])
