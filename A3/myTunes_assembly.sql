DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS mycds;
DROP TABLE IF EXISTS mysongs;

CREATE TABLE mycds(
      cd_id text primary key not null, --cd unique id
      title text NOT NULL, --title of CD
      artist text NOT NULL, --artist whose CD it is or "various artists"
      producer text default NULL,
      year integer,
      contributer text --student number who contirbuted the data
);

CREATE TABLE mysongs(
      song_id integer primary key autoincrement, --auto incrementing key
      title text NOT NULL, --title of song
      composer text NOT NULL, --person or persons who wrote the song
      cd_id text NOT NULL, --cd this song appears on
      track integer NOT NULL, --track number of the song
      contributer text --student number who contirbuted the data
      );

.read myTunes_Abdelghny.sql

INSERT INTO mycds (cd_id, title, artist, producer, year, contributer) SELECT cd_id, title, artist, producer, year, contributer from cds;
INSERT INTO mysongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer from songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

.read myTunes_Ali.sql

INSERT INTO mycds (cd_id, title, artist, producer, year, contributer) SELECT cd_id, title, artist, producer, year, contributer from cds;
INSERT INTO mysongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer from songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

.read myTunes_Fatemeh.sql

INSERT INTO mycds (cd_id, title, artist, producer, year, contributer) SELECT cd_id, title, artist, producer, year, contributer from cds;
INSERT INTO mysongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer from songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

.read myTunes_Monica.sql

INSERT INTO mycds (cd_id, title, artist, producer, year, contributer) SELECT cd_id, title, artist, producer, year, contributer from cds;
INSERT INTO mysongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer from songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

.read myTunes_Rezieh.sql

INSERT INTO mycds (cd_id, title, artist, producer, year, contributer) SELECT cd_id, title, artist, producer, year, contributer from cds;
INSERT INTO mysongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer from songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

.read myTunes_Saman.sql

INSERT INTO mycds (cd_id, title, artist, producer, year, contributer) SELECT cd_id, title, artist, producer, year, contributer from cds;
INSERT INTO mysongs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer from songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

ALTER TABLE mycds RENAME TO cds;
ALTER TABLE mysongs RENAME TO songs;