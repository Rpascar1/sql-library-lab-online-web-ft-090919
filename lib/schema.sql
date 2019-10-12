CREATE TABLE "authors" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT
);

CREATE TABLE "books" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"title"	TEXT,
	"year"	INTEGER,
	"series_id"	INTEGER
);

CREATE TABLE "character_books" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"book_id"	INTEGER,
	"character_id"	INTEGER
);

CREATE TABLE "characters" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT,
	"motto"	TEXT,
	"species"	TEXT,
	"author_id"	INTEGER
);

CREATE TABLE "series" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"title"	TEXT,
	"author_id"	INTEGER,
	"subgenre_id"	INTEGER
);

CREATE TABLE "subgenres" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT
);
