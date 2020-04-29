SELECT
	*
FROM
	Genre;

SELECT
	*
FROM
	Album;

SELECT
	*
FROM
	Song;

SELECT
	*
FROM
	Artist;

INSERT INTO Artist (ArtistName, YearEstablished)
		VALUES('The Afghan Whigs', 1986);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
		VALUES('Gentlemen', '10/05/1993', 2936, 'Elektra', 28, 2);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
		VALUES('Debonair', 255, '10/05/1993', 2, 28, 23);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
		VALUES('Now You Know', 250, '10/05/1993', 2, 28, 23);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
		VALUES('I Keep Coming Back', 292, '10/05/1993', 2, 28, 23);

SELECT
	Song.Title,
	Album.Title,
	Artist.ArtistName
FROM
	Album
	LEFT JOIN Artist ON Artist.ArtistId = Album.ArtistId
	LEFT JOIN Song ON Song.AlbumId = Album.AlbumId
		WHERE Artist.ArtistName LIKE 'the afghan whigs';

SELECT
	COUNT(Song.AlbumId),
	Album.Title
FROM
	Song
	LEFT JOIN Album ON Song.AlbumId = Album.AlbumId
GROUP BY
	Album.AlbumId;

SELECT
	COUNT(Song.ArtistId),
	Artist.ArtistName
FROM
	Song
	LEFT JOIN Artist ON Song.ArtistId = Artist.ArtistId
GROUP BY
	Artist.ArtistId;

SELECT
	COUNT(Song.GenreId),
	Genre.Label
FROM
	Song
	LEFT JOIN Genre ON Song.GenreId = Genre.GenreId
GROUP BY
	Genre.GenreId;