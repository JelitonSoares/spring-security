CREATE TABLE diseases (
   id TEXT PRIMARY KEY UNIQUE NOT NULL,
   cid TEXT NOT NULL UNIQUE,
   name TEXT NOT NULL,
   symptoms TEXT NOT NULL,
   treatments TEXT NOT NULL,
   risk SMALLINT NOT NULL
)