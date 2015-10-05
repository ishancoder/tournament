-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE players(id serial primary key, 
		     name text, won integer default 0, 
		     matches integer default 0);

CREATE TABLE matches(player1 serial references players(id), 
		     player2 serial references players(id),
		     winner serial references players(id));

